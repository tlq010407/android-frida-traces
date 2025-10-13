.class public Lorg/telegram/messenger/PushListenerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$PushType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PUSH_TYPE_FIREBASE:I = 0x2

.field public static final PUSH_TYPE_HUAWEI:I = 0xd

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$P1a24T7VvkcTjlUqZlJxlqIf4HM(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X4AFqiYuWKNVxKgP6ag2LMkLD4I(IJI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$5(IJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajFFKH7fIgEVRIQyyG8JkwTnc2M(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNjoKzLxdgjjiAu7LAa_JzI_oiA(IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$0(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWkEZv3oxmETvqnhw1v-3CF-Wl4(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iPr3PgkHJLl5aQDihBXflfLF_jI(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$2(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5j5e9Lujg-skyyg8gtnnTTFOME(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYIZ4V9UJXbKQeRZEvfo7jiLnHo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$7(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CHAT_REACT_TODO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CHAT_REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CHAT_REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CHAT_REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CHAT_REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "REACT_STORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "CHAT_REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "CHAT_REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "CHAT_REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "CHAT_REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "CHAT_REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "CHAT_REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "CHAT_REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "CHAT_REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "CHAT_REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "REACT_TODO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "CHAT_REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_20
    const-string v0, "CHAT_REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_21
    const-string v0, "REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_22
    const-string v0, "CHAT_REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_23
    const-string v0, "REACT_HIDDEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_24
    const-string v0, "REACT_STORY_HIDDEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_25
    const-string v0, "REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_26
    const-string v0, "CHAT_REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactTodo:I

    :goto_1
    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactText:I

    goto :goto_1

    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactQuiz:I

    goto :goto_1

    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPoll:I

    goto :goto_1

    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGame:I

    goto :goto_1

    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGif:I

    goto :goto_1

    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeo:I

    goto :goto_1

    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->PushReactDoc:I

    goto :goto_1

    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->PushReactVideo:I

    goto :goto_1

    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$string;->PushReactStory:I

    goto :goto_1

    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactRound:I

    goto :goto_1

    :pswitch_b
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPhoto:I

    goto :goto_1

    :pswitch_c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactAudio:I

    goto :goto_1

    :pswitch_d
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeoLive:I

    goto :goto_1

    :pswitch_e
    sget p0, Lorg/telegram/messenger/R$string;->NotificationReactGiveaway:I

    goto :goto_1

    :pswitch_f
    sget p0, Lorg/telegram/messenger/R$string;->NotificationChatReactGiveaway:I

    goto :goto_1

    :pswitch_10
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactVideo:I

    goto :goto_1

    :pswitch_11
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactRound:I

    goto :goto_1

    :pswitch_12
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPhoto:I

    goto :goto_1

    :pswitch_13
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactAudio:I

    goto :goto_1

    :pswitch_14
    sget p0, Lorg/telegram/messenger/R$string;->PushReactSticker:I

    goto :goto_1

    :pswitch_15
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGif:I

    goto :goto_1

    :pswitch_16
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeo:I

    goto :goto_1

    :pswitch_17
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactDoc:I

    goto :goto_1

    :pswitch_18
    sget p0, Lorg/telegram/messenger/R$string;->PushReactInvoice:I

    goto :goto_1

    :pswitch_19
    sget p0, Lorg/telegram/messenger/R$string;->PushReactTodo:I

    goto :goto_1

    :pswitch_1a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactText:I

    goto :goto_1

    :pswitch_1b
    sget p0, Lorg/telegram/messenger/R$string;->PushReactQuiz:I

    goto :goto_1

    :pswitch_1c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPoll:I

    goto :goto_1

    :pswitch_1d
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGame:I

    goto :goto_1

    :pswitch_1e
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactSticker:I

    goto :goto_1

    :pswitch_1f
    sget p0, Lorg/telegram/messenger/R$string;->PushReactContect:I

    goto :goto_1

    :pswitch_20
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactInvoice:I

    goto :goto_1

    :pswitch_21
    sget p0, Lorg/telegram/messenger/R$string;->PushReactNoText:I

    goto :goto_1

    :pswitch_22
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactNotext:I

    goto :goto_1

    :pswitch_23
    sget p0, Lorg/telegram/messenger/R$string;->PushReactHidden:I

    goto :goto_1

    :pswitch_24
    sget p0, Lorg/telegram/messenger/R$string;->PushReactStoryHidden:I

    goto :goto_1

    :pswitch_25
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeoLocation:I

    goto :goto_1

    :pswitch_26
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactContact:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7e0af387 -> :sswitch_26
        -0x70c28b43 -> :sswitch_25
        -0x69ae20cc -> :sswitch_24
        -0x5c91cb76 -> :sswitch_23
        -0x5461d12b -> :sswitch_22
        -0x51f8deb2 -> :sswitch_21
        -0x41ebd47a -> :sswitch_20
        -0x335596e0 -> :sswitch_1f
        -0x276d0e6a -> :sswitch_1e
        0x3191ed2 -> :sswitch_1d
        0x31d6a9f -> :sswitch_1c
        0x31df535 -> :sswitch_1b
        0x31f180d -> :sswitch_1a
        0x31f3b26 -> :sswitch_19
        0x8c9882d -> :sswitch_18
        0xb7e8a11 -> :sswitch_17
        0xb7e942a -> :sswitch_16
        0xb7e949d -> :sswitch_15
        0x23484e3d -> :sswitch_14
        0x25dcca6f -> :sswitch_13
        0x26aa6ccb -> :sswitch_12
        0x26c9e027 -> :sswitch_11
        0x26ff4314 -> :sswitch_10
        0x2b9f8026 -> :sswitch_f
        0x3795b85f -> :sswitch_e
        0x44881816 -> :sswitch_d
        0x5fbf24d6 -> :sswitch_c
        0x608cc732 -> :sswitch_b
        0x60ac3a8e -> :sswitch_a
        0x60bc81f5 -> :sswitch_9
        0x60e19d7b -> :sswitch_8
        0x63325238 -> :sswitch_7
        0x63325c51 -> :sswitch_6
        0x63325cc4 -> :sswitch_5
        0x6453e219 -> :sswitch_4
        0x64582de6 -> :sswitch_3
        0x6458b87c -> :sswitch_2
        0x6459db54 -> :sswitch_1
        0x6459fe6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$processRemoteMessage$2(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$3(I)V
    .locals 5

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$4(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocationController;->setNewLocationEndWatchTime()V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$5(IJI)V
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->reportMessageDelivery(JIZ)V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 62

    move-object/from16 v1, p0

    const-string v2, "chat_id"

    const-string v3, "from_id"

    const-string v4, "channel_id"

    const-string v5, "user_id"

    const-string v6, "custom"

    const-string v7, ""

    const-string v8, "loc_key"

    const-string v11, "NotificationPaidMedia"

    const-string v12, "AmongWinners"

    const-string v13, "Photos"

    const-string v14, "Videos"

    const-string v15, "MusicFiles"

    const-string v9, "Files"

    const-string v10, "call_id"

    move-object/from16 v18, v7

    const-string v7, "STORY_NOTEXT"

    move-object/from16 v19, v11

    const-string v11, "REACT_"

    sget-boolean v23, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v23, :cond_0

    move-object/from16 v23, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v13

    const-string v13, " START PROCESSING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :goto_0
    const/16 v13, 0x8

    const/16 v25, 0x0

    move-object/from16 v12, p1

    :try_start_0
    invoke-static {v12, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    new-instance v13, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v27, v14

    array-length v14, v12

    invoke-direct {v13, v14}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v13, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    sget-object v14, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    if-nez v14, :cond_1

    move-object/from16 v28, v15

    const/16 v14, 0x8

    new-array v15, v14, [B

    sput-object v15, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    sget-object v15, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v15

    move-object/from16 v29, v9

    array-length v9, v15

    sub-int/2addr v9, v14

    move-object/from16 v30, v10

    sget-object v10, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    move-object/from16 v31, v7

    const/4 v7, 0x0

    invoke-static {v15, v9, v10, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/16 v7, 0x8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_77

    :cond_1
    move-object/from16 v31, v7

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v28, v15

    goto :goto_1

    :goto_2
    new-array v9, v7, [B

    const/4 v7, 0x1

    invoke-virtual {v13, v9, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    sget-object v7, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 2 k1=%s k2=%s, key=%s"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    invoke-static {v2, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/16 v7, 0x10

    new-array v9, v7, [B

    const/4 v10, 0x1

    invoke-virtual {v13, v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    sget-object v14, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    const/4 v15, 0x2

    invoke-static {v14, v9, v10, v15}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v14

    iget-object v10, v13, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v15, v14, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v14, v14, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    array-length v12, v12

    const/16 v16, 0x18

    add-int/lit8 v38, v12, -0x18

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x18

    move-object/from16 v32, v10

    move-object/from16 v33, v15

    move-object/from16 v34, v14

    invoke-static/range {v32 .. v38}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    sget-object v39, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    iget-object v10, v13, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v44

    const/16 v40, 0x60

    const/16 v41, 0x20

    const/16 v43, 0x18

    move-object/from16 v42, v10

    invoke-static/range {v39 .. v44}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v10

    const/16 v12, 0x8

    const/4 v14, 0x0

    invoke-static {v9, v14, v10, v12}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 3, key = %s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const/4 v9, 0x1

    invoke-virtual {v13, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v13, v10, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    if-eqz v13, :cond_6

    const/4 v14, -0x1

    :try_start_2
    invoke-virtual {v13, v14, v10}, Lorg/telegram/messenger/ApplicationLoader;->consumePush(ILorg/json/JSONObject;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_3
    move-object/from16 p1, v9

    goto/16 :goto_75

    :cond_6
    :try_start_3
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    if-eqz v13, :cond_7

    :try_start_4
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_7
    move-object/from16 v8, v18

    :goto_4
    :try_start_5
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    if-eqz v13, :cond_8

    :try_start_6
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v8

    goto :goto_3

    :cond_8
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :goto_5
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    if-eqz v13, :cond_9

    :try_start_8
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object/from16 v5, v25

    :goto_6
    if-nez v5, :cond_a

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :cond_a
    :try_start_9
    instance-of v13, v5, Ljava/lang/Long;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    if-eqz v13, :cond_b

    :try_start_a
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    :cond_b
    :try_start_b
    instance-of v13, v5, Ljava/lang/Integer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    if-eqz v13, :cond_c

    :try_start_c
    check-cast v5, Ljava/lang/Integer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    :cond_c
    :try_start_d
    instance-of v13, v5, Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-eqz v13, :cond_d

    :try_start_e
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    :goto_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    int-to-long v13, v5

    goto :goto_9

    :cond_d
    :try_start_f
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    :goto_8
    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    :goto_9
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    const/4 v7, 0x4

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v7, :cond_f

    :try_start_10
    invoke-static {v15}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v32

    cmp-long v7, v32, v13

    if-nez v7, :cond_e

    move v14, v15

    const/4 v5, 0x1

    goto :goto_b

    :cond_e
    const/4 v7, 0x1

    add-int/2addr v15, v7

    const/4 v7, 0x4

    goto :goto_a

    :cond_f
    move v14, v5

    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_11

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT FOUND"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_10
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    return-void

    :cond_11
    :try_start_11
    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    if-nez v5, :cond_13

    :try_start_12
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT ACTIVATED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 p1, v9

    :goto_c
    move v5, v14

    goto/16 :goto_74

    :cond_12
    :goto_d
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    return-void

    :cond_13
    :try_start_13
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    const-string v7, " "

    if-eqz v5, :cond_14

    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_14
    :try_start_15
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    const v13, -0x750b1f91

    if-eq v5, v13, :cond_18

    const v13, -0x36e09b77

    if-eq v5, v13, :cond_17

    const v13, 0x25bae29f

    if-eq v5, v13, :cond_16

    const v13, 0x51668772

    if-eq v5, v13, :cond_15

    goto :goto_e

    :cond_15
    :try_start_16
    const-string v5, "GEO_LIVE_PENDING"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x3

    goto :goto_f

    :cond_16
    const-string v5, "MESSAGE_ANNOUNCEMENT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_17
    const-string v5, "DC_UPDATE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    goto :goto_f

    :cond_18
    :try_start_17
    const-string v5, "SESSION_REVOKE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x2

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v5, -0x1

    :goto_f
    if-eqz v5, :cond_95

    const/4 v13, 0x1

    if-eq v5, v13, :cond_94

    const/4 v13, 0x2

    if-eq v5, v13, :cond_93

    const/4 v13, 0x3

    if-eq v5, v13, :cond_92

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    if-eqz v5, :cond_1a

    :try_start_18
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    neg-long v12, v4

    goto :goto_10

    :cond_1a
    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    :goto_10
    :try_start_19
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    if-eqz v15, :cond_1b

    :try_start_1a
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-wide/from16 v34, v12

    goto :goto_11

    :cond_1b
    move-wide/from16 v34, v12

    const-wide/16 v12, 0x0

    :goto_11
    :try_start_1b
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    if-eqz v3, :cond_1c

    :try_start_1c
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object/from16 p1, v9

    move-object v15, v10

    neg-long v9, v2

    move-wide/from16 v34, v9

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 p1, v9

    :goto_12
    move-object v1, v0

    goto/16 :goto_c

    :cond_1c
    move-object/from16 p1, v9

    move-object v15, v10

    const-wide/16 v2, 0x0

    :goto_13
    :try_start_1d
    const-string v9, "topic_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    if-eqz v9, :cond_1d

    :try_start_1e
    const-string v9, "topic_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_12

    :cond_1d
    const/4 v9, 0x0

    :goto_14
    :try_start_1f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v15

    const-string v15, "recived push notification {"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "} chatId "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " custom topicId "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string v10, "encryption_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-eqz v10, :cond_1e

    :try_start_20
    const-string v10, "encryption_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object v15, v11

    int-to-long v10, v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v34
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto :goto_15

    :cond_1e
    move-object v15, v11

    :goto_15
    :try_start_21
    const-string v10, "schedule"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    if-eqz v10, :cond_1f

    :try_start_22
    const-string v10, "schedule"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    const/4 v10, 0x1

    :goto_16
    const-wide/16 v32, 0x0

    goto :goto_17

    :cond_1f
    const/4 v10, 0x0

    goto :goto_16

    :goto_17
    cmp-long v11, v34, v32

    if-nez v11, :cond_20

    const-string v11, "ENCRYPTED_MESSAGE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    sget-wide v34, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :cond_20
    move/from16 v37, v10

    move-wide/from16 v10, v34

    const-wide/16 v32, 0x0

    cmp-long v34, v10, v32

    if-eqz v34, :cond_26

    move-object/from16 v34, v15

    :try_start_23
    const-string v15, "CONF_CALL_REQUEST"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    move-object/from16 v35, v7

    const-string v7, "msg_id"

    move-object/from16 v38, v7

    const-string v7, "loc_args"

    if-nez v15, :cond_21

    :try_start_24
    const-string v15, "CONF_VIDEOCALL_REQUEST"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    :cond_21
    move v5, v14

    move-object/from16 v1, v30

    move-object/from16 v15, v36

    move-object/from16 v3, v38

    move-object v14, v7

    goto/16 :goto_70

    :cond_22
    const-string v15, "READ_HISTORY"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    move-object/from16 v39, v7

    const-string v7, " for dialogId = "

    if-eqz v15, :cond_27

    :try_start_25
    const-string v9, "max_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v15, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v15, :cond_23

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received read notification max_id = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_23
    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-eqz v1, :cond_24

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:J

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->still_unread_count:I

    goto :goto_19

    :cond_24
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v7, v12, v4

    if-eqz v7, :cond_25

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_18

    :cond_25
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v2, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    :goto_18
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    :goto_19
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :cond_26
    :goto_1a
    move v5, v14

    goto/16 :goto_72

    :cond_27
    :try_start_26
    const-string v15, "READ_STORIES"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    if-eqz v15, :cond_28

    :try_start_27
    const-string v1, "max_id"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v10, v11, v1}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    goto :goto_1a

    :cond_28
    :try_start_28
    const-string v15, "STORY_DELETED"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    move-wide/from16 v40, v12

    const-string v12, "story_id"

    if-eqz v15, :cond_29

    :try_start_29
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v10, v11, v1}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    goto :goto_1a

    :cond_29
    :try_start_2a
    const-string v13, "MESSAGE_DELETED"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    const-string v15, ","

    move-wide/from16 v42, v2

    const-string v2, "messages"

    if-eqz v13, :cond_2b

    :try_start_2b
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1b
    array-length v12, v2

    if-ge v9, v12, :cond_2a

    aget-object v12, v2, v9

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_1b

    :cond_2a
    neg-long v12, v4

    invoke-virtual {v3, v12, v13, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    move-wide/from16 v35, v10

    move-object/from16 v37, v6

    move-wide/from16 v38, v4

    invoke-virtual/range {v34 .. v39}, Lorg/telegram/messenger/MessagesController;->deleteMessagesByPush(JLjava/util/ArrayList;J)V

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    goto/16 :goto_1e

    :cond_2b
    :try_start_2c
    const-string v3, "READ_REACTION"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    if-eqz v3, :cond_2d

    :try_start_2d
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v44, v15

    const/4 v13, 0x0

    :goto_1d
    array-length v15, v2

    if-ge v13, v15, :cond_2c

    aget-object v15, v2, v13

    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p2, v2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    invoke-virtual {v12, v2, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v2, 0x1

    add-int/2addr v13, v2

    move-object/from16 v2, p2

    goto :goto_1d

    :cond_2c
    neg-long v4, v4

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v37

    int-to-long v2, v9

    move-wide/from16 v38, v10

    move-wide/from16 v40, v2

    move-object/from16 v42, v12

    invoke-virtual/range {v37 .. v42}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JJLandroid/util/SparseBooleanArray;)V

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v44

    invoke-static {v1, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    :goto_1e
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    goto/16 :goto_1a

    :cond_2d
    :try_start_2e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v3, v38

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2e

    goto :goto_1f

    :cond_2e
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    if-eqz v3, :cond_2f

    move-object v3, v12

    :goto_1f
    :try_start_2f
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    goto :goto_20

    :cond_2f
    const/4 v3, 0x0

    :goto_20
    :try_start_30
    const-string v13, "random_id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    if-eqz v13, :cond_30

    :try_start_31
    const-string v13, "random_id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object v13, v2

    move-wide/from16 v1, v44

    goto :goto_21

    :cond_30
    move-object v13, v2

    const-wide/16 v1, 0x0

    :goto_21
    if-eqz v3, :cond_32

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move-object/from16 v38, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_31

    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move/from16 v44, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v9, v13}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_31
    move/from16 v44, v9

    :goto_22
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v3, v9, :cond_33

    goto :goto_23

    :cond_32
    move/from16 v44, v9

    move-object/from16 v38, v13

    const-wide/16 v32, 0x0

    cmp-long v9, v1, v32

    if-eqz v9, :cond_33

    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->checkMessageByRandomId(J)Z

    move-result v9
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    if-nez v9, :cond_33

    :goto_23
    move-object/from16 v13, v34

    const/4 v9, 0x1

    goto :goto_24

    :cond_33
    move-object/from16 v13, v34

    const/4 v9, 0x0

    :goto_24
    :try_start_32
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    move-wide/from16 v45, v1

    const-string v1, "CHAT_REACT_"

    if-nez v15, :cond_35

    :try_start_33
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    if-eqz v2, :cond_34

    goto :goto_25

    :cond_34
    move-object/from16 v2, v31

    goto :goto_26

    :cond_35
    :goto_25
    move-object/from16 v2, v31

    const/4 v9, 0x1

    :goto_26
    :try_start_34
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_c

    move/from16 v31, v3

    const-string v3, "STORY_HIDDEN_AUTHOR"

    if-nez v15, :cond_37

    :try_start_35
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_5

    if-eqz v15, :cond_36

    goto :goto_27

    :cond_36
    move v12, v9

    const/4 v9, -0x1

    goto :goto_29

    :cond_37
    :goto_27
    :try_start_36
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_c

    if-eqz v9, :cond_38

    :try_start_37
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_5

    goto :goto_28

    :cond_38
    const/4 v9, -0x1

    :goto_28
    if-ltz v9, :cond_39

    const/4 v12, 0x1

    goto :goto_29

    :cond_39
    const/4 v12, 0x0

    :goto_29
    if-eqz v12, :cond_8c

    :try_start_38
    const-string v12, "chat_from_id"
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move/from16 v47, v14

    const-wide/16 v14, 0x0

    :try_start_39
    invoke-virtual {v6, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v12, "chat_from_broadcast_id"

    move-object/from16 v50, v13

    invoke-virtual {v6, v12, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    move/from16 v34, v9

    const-string v9, "chat_from_group_id"

    invoke-virtual {v6, v9, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v51

    cmp-long v9, v2, v14

    if-nez v9, :cond_3b

    cmp-long v9, v51, v14

    if-eqz v9, :cond_3a

    goto :goto_2a

    :cond_3a
    const/4 v9, 0x0

    goto :goto_2b

    :cond_3b
    :goto_2a
    const/4 v9, 0x1

    :goto_2b
    const-string v14, "mention"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    if-eqz v14, :cond_3c

    :try_start_3a
    const-string v14, "mention"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    if-eqz v14, :cond_3c

    const/4 v14, 0x1

    goto :goto_2c

    :catchall_6
    move-exception v0

    move-object v1, v0

    move/from16 v5, v47

    goto/16 :goto_74

    :cond_3c
    const/4 v14, 0x0

    :goto_2c
    :try_start_3b
    const-string v15, "silent"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    if-eqz v15, :cond_3d

    :try_start_3c
    const-string v15, "silent"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    if-eqz v15, :cond_3d

    move/from16 v53, v14

    move-object/from16 v15, v36

    move-object/from16 v14, v39

    const/16 v36, 0x1

    goto :goto_2d

    :cond_3d
    move/from16 v53, v14

    move-object/from16 v15, v36

    move-object/from16 v14, v39

    const/16 v36, 0x0

    :goto_2d
    :try_start_3d
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v39
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_9

    if-eqz v39, :cond_3e

    :try_start_3e
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    move-wide/from16 v54, v2

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v15, :cond_3f

    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v2, v3

    const/16 v22, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3e
    move-wide/from16 v54, v2

    move-object/from16 v2, v25

    :cond_3f
    if-eqz v2, :cond_41

    array-length v3, v2

    if-gtz v3, :cond_40

    goto :goto_2f

    :cond_40
    const/4 v3, 0x0

    aget-object v14, v2, v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_6

    goto :goto_30

    :cond_41
    :goto_2f
    move-object/from16 v14, v25

    :goto_30
    :try_start_3f
    const-string v3, "edit_date"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v15, "CHAT_"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_9

    if-eqz v15, :cond_45

    if-eqz v2, :cond_45

    :try_start_40
    array-length v15, v2

    if-lez v15, :cond_45

    invoke-static {v10, v11}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v15

    if-eqz v15, :cond_43

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " @ "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v56, v3

    const/4 v14, 0x1

    aget-object v3, v2, v14

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_42
    move-object/from16 v57, v25

    move-object/from16 v3, v50

    const/4 v15, 0x0

    const/16 v39, 0x0

    :goto_31
    const/16 v50, 0x0

    goto :goto_36

    :cond_43
    move/from16 v56, v3

    const-wide/16 v32, 0x0

    cmp-long v3, v4, v32

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    :goto_32
    const/4 v15, 0x1

    goto :goto_33

    :cond_44
    const/4 v3, 0x0

    goto :goto_32

    :goto_33
    aget-object v39, v2, v15
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_6

    move-object/from16 v57, v14

    move-object/from16 v14, v39

    const/4 v15, 0x0

    :goto_34
    const/16 v39, 0x0

    move-object/from16 v61, v50

    move/from16 v50, v3

    move-object/from16 v3, v61

    goto :goto_36

    :cond_45
    move/from16 v56, v3

    :try_start_41
    const-string v3, "PINNED_"

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-wide/16 v32, 0x0

    cmp-long v3, v4, v32

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    goto :goto_35

    :cond_46
    const/4 v3, 0x0

    :goto_35
    move-object/from16 v57, v25

    const/4 v15, 0x1

    goto :goto_34

    :cond_47
    const-string v3, "CHANNEL_"

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v57, v25

    move-object/from16 v3, v50

    const/4 v15, 0x0

    const/16 v39, 0x1

    goto :goto_31

    :goto_36
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v58

    if-nez v58, :cond_48

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v58

    if-eqz v58, :cond_49

    :cond_48
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-wide/from16 v59, v12

    move-object/from16 v58, v14

    move/from16 v6, v47

    goto/16 :goto_63

    :cond_49
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v58
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9

    sparse-switch v58, :sswitch_data_0

    move-object/from16 v58, v14

    :cond_4a
    move-object/from16 v14, v48

    goto/16 :goto_38

    :sswitch_0
    move-object/from16 v58, v14

    :try_start_42
    const-string v14, "CHAT_MESSAGE_GEOLIVE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5b

    move-object/from16 v14, v48

    const/16 v26, 0x5b

    goto/16 :goto_37

    :sswitch_1
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_PHOTOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x44

    move-object/from16 v14, v48

    const/16 v26, 0x44

    goto/16 :goto_37

    :sswitch_2
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_NOTEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x31

    move-object/from16 v14, v48

    const/16 v26, 0x31

    goto/16 :goto_37

    :sswitch_3
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_PLAYLIST"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x46

    move-object/from16 v14, v48

    const/16 v26, 0x46

    goto/16 :goto_37

    :sswitch_4
    move-object/from16 v58, v14

    const-string v14, "PINNED_CONTACT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7d

    move-object/from16 v14, v48

    const/16 v26, 0x7d

    goto/16 :goto_37

    :sswitch_5
    move-object/from16 v58, v14

    const-string v14, "CHAT_PHOTO_EDITED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x63

    move-object/from16 v14, v48

    const/16 v26, 0x63

    goto/16 :goto_37

    :sswitch_6
    move-object/from16 v58, v14

    const-string v14, "LOCKED_MESSAGE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8e

    move-object/from16 v14, v48

    const/16 v26, 0x8e

    goto/16 :goto_37

    :sswitch_7
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_PLAYLIST"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x72

    move-object/from16 v14, v48

    const/16 v26, 0x72

    goto/16 :goto_37

    :sswitch_8
    move-object/from16 v58, v14

    const-string v14, "CHAT_REACT_PAID_MEDIA"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xe

    move-object/from16 v14, v48

    const/16 v26, 0xe

    goto/16 :goto_37

    :sswitch_9
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGES"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x48

    move-object/from16 v14, v48

    const/16 v26, 0x48

    goto/16 :goto_37

    :sswitch_a
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_INVOICE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x25

    move-object/from16 v14, v48

    const/16 v26, 0x25

    goto/16 :goto_37

    :sswitch_b
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_VIDEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4f

    move-object/from16 v14, v48

    const/16 v26, 0x4f

    goto/16 :goto_37

    :sswitch_c
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_STORY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4d

    move-object/from16 v14, v48

    const/16 v26, 0x4d

    goto/16 :goto_37

    :sswitch_d
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_ROUND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x50

    move-object/from16 v14, v48

    const/16 v26, 0x50

    goto/16 :goto_37

    :sswitch_e
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_PHOTO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4e

    move-object/from16 v14, v48

    const/16 v26, 0x4e

    goto/16 :goto_37

    :sswitch_f
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_AUDIO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x53

    move-object/from16 v14, v48

    const/16 v26, 0x53

    goto/16 :goto_37

    :sswitch_10
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_PLAYLIST"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x29

    move-object/from16 v14, v48

    const/16 v26, 0x29

    goto/16 :goto_37

    :sswitch_11
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_VIDEOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x28

    move-object/from16 v14, v48

    const/16 v26, 0x28

    goto/16 :goto_37

    :sswitch_12
    move-object/from16 v58, v14

    const-string v14, "PHONE_CALL_MISSED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x93

    move-object/from16 v14, v48

    const/16 v26, 0x93

    goto/16 :goto_37

    :sswitch_13
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2f

    move-object/from16 v14, v48

    const/16 v26, 0x2f

    goto/16 :goto_37

    :sswitch_14
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_STARGIFT_UPGRADE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x9

    move-object/from16 v14, v48

    const/16 v26, 0x9

    goto/16 :goto_37

    :sswitch_15
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x49

    move-object/from16 v14, v48

    const/16 v26, 0x49

    goto/16 :goto_37

    :sswitch_16
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_PHOTOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x27

    move-object/from16 v14, v48

    const/16 v26, 0x27

    goto/16 :goto_37

    :sswitch_17
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_VIDEOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x71

    move-object/from16 v14, v48

    const/16 v26, 0x71

    goto/16 :goto_37

    :sswitch_18
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_NOTEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xf

    move-object/from16 v14, v48

    const/16 v26, 0xf

    goto/16 :goto_37

    :sswitch_19
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GIF"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x21

    move-object/from16 v14, v48

    const/16 v26, 0x21

    goto/16 :goto_37

    :sswitch_1a
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1f

    move-object/from16 v14, v48

    const/16 v26, 0x1f

    goto/16 :goto_37

    :sswitch_1b
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_DOC"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x18

    goto/16 :goto_37

    :sswitch_1c
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5e

    move-object/from16 v14, v48

    const/16 v26, 0x5e

    goto/16 :goto_37

    :sswitch_1d
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GEOLIVE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x40

    move-object/from16 v14, v48

    const/16 v26, 0x40

    goto/16 :goto_37

    :sswitch_1e
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_PHOTOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x70

    move-object/from16 v14, v48

    const/16 v26, 0x70

    goto/16 :goto_37

    :sswitch_1f
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_PAID_MEDIA"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xa

    move-object/from16 v14, v48

    const/16 v26, 0xa

    goto/16 :goto_37

    :sswitch_20
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2d

    move-object/from16 v14, v48

    const/16 v26, 0x2d

    goto/16 :goto_37

    :sswitch_21
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_NOTEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4c

    move-object/from16 v14, v48

    const/16 v26, 0x4c

    goto/16 :goto_37

    :sswitch_22
    move-object/from16 v58, v14

    const-string v14, "CHAT_TITLE_EDITED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x62

    move-object/from16 v14, v48

    const/16 v26, 0x62

    goto/16 :goto_37

    :sswitch_23
    move-object/from16 v58, v14

    const-string v14, "PINNED_NOTEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x76

    move-object/from16 v14, v48

    const/16 v26, 0x76

    goto/16 :goto_37

    :sswitch_24
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_TODO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1e

    move-object/from16 v14, v48

    const/16 v26, 0x1e

    goto/16 :goto_37

    :sswitch_25
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_TEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/4 v14, 0x5

    move-object/from16 v14, v48

    const/16 v26, 0x5

    goto/16 :goto_37

    :sswitch_26
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_QUIZ"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1c

    move-object/from16 v14, v48

    const/16 v26, 0x1c

    goto/16 :goto_37

    :sswitch_27
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_POLL"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1d

    move-object/from16 v14, v48

    const/16 v26, 0x1d

    goto/16 :goto_37

    :sswitch_28
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GAME"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x22

    move-object/from16 v14, v48

    const/16 v26, 0x22

    goto/16 :goto_37

    :sswitch_29
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_FWDS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x26

    move-object/from16 v14, v48

    const/16 v26, 0x26

    goto/16 :goto_37

    :sswitch_2a
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_DOCS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2a

    move-object/from16 v14, v48

    const/16 v26, 0x2a

    goto/16 :goto_37

    :sswitch_2b
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_STORY_MENTION"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x11

    move-object/from16 v14, v48

    const/16 v26, 0x11

    goto/16 :goto_37

    :sswitch_2c
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_TODO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x57

    move-object/from16 v14, v48

    const/16 v26, 0x57

    goto/16 :goto_37

    :sswitch_2d
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_TEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4b

    move-object/from16 v14, v48

    const/16 v26, 0x4b

    goto/16 :goto_37

    :sswitch_2e
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_QUIZ"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x55

    move-object/from16 v14, v48

    const/16 v26, 0x55

    goto/16 :goto_37

    :sswitch_2f
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_POLL"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x56

    move-object/from16 v14, v48

    const/16 v26, 0x56

    goto/16 :goto_37

    :sswitch_30
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GAME"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5d

    move-object/from16 v14, v48

    const/16 v26, 0x5d

    goto/16 :goto_37

    :sswitch_31
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_FWDS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6f

    move-object/from16 v14, v48

    const/16 v26, 0x6f

    goto/16 :goto_37

    :sswitch_32
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_DOCS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x73

    move-object/from16 v14, v48

    const/16 v26, 0x73

    goto/16 :goto_37

    :sswitch_33
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x24

    move-object/from16 v14, v48

    const/16 v26, 0x24

    goto/16 :goto_37

    :sswitch_34
    move-object/from16 v58, v14

    const-string v14, "PINNED_GEOLIVE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x83

    move-object/from16 v14, v48

    const/16 v26, 0x83

    goto/16 :goto_37

    :sswitch_35
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_STARGIFT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/4 v14, 0x7

    move-object/from16 v14, v48

    const/16 v26, 0x7

    goto/16 :goto_37

    :sswitch_36
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2c

    move-object/from16 v14, v48

    const/16 v26, 0x2c

    goto/16 :goto_37

    :sswitch_37
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x30

    move-object/from16 v14, v48

    const/16 v26, 0x30

    goto/16 :goto_37

    :sswitch_38
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_TODO_DONE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x58

    move-object/from16 v14, v48

    const/16 v26, 0x58

    goto/16 :goto_37

    :sswitch_39
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_CONTACT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1b

    move-object/from16 v14, v48

    const/16 v26, 0x1b

    goto/16 :goto_37

    :sswitch_3a
    move-object/from16 v58, v14

    const-string v14, "PINNED_VIDEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x78

    move-object/from16 v14, v48

    const/16 v26, 0x78

    goto/16 :goto_37

    :sswitch_3b
    move-object/from16 v58, v14

    const-string v14, "PINNED_ROUND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x79

    move-object/from16 v14, v48

    const/16 v26, 0x79

    goto/16 :goto_37

    :sswitch_3c
    move-object/from16 v58, v14

    const-string v14, "PINNED_PHOTO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x77

    move-object/from16 v14, v48

    const/16 v26, 0x77

    goto/16 :goto_37

    :sswitch_3d
    move-object/from16 v58, v14

    const-string v14, "PINNED_AUDIO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7c

    move-object/from16 v14, v48

    const/16 v26, 0x7c

    goto/16 :goto_37

    :sswitch_3e
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_PHOTO_SECRET"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x13

    move-object/from16 v14, v48

    const/16 v26, 0x13

    goto/16 :goto_37

    :sswitch_3f
    move-object/from16 v58, v14

    const-string v14, "CHAT_VOICECHAT_INVITE_YOU"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x68

    move-object/from16 v14, v48

    const/16 v26, 0x68

    goto/16 :goto_37

    :sswitch_40
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GIFTCODE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2b

    move-object/from16 v14, v48

    const/16 v26, 0x2b

    goto/16 :goto_37

    :sswitch_41
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_VIDEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x34

    move-object/from16 v14, v48

    const/16 v26, 0x34

    goto/16 :goto_37

    :sswitch_42
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_STORY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x32

    move-object/from16 v14, v48

    const/16 v26, 0x32

    goto/16 :goto_37

    :sswitch_43
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_ROUND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x35

    move-object/from16 v14, v48

    const/16 v26, 0x35

    goto/16 :goto_37

    :sswitch_44
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_PHOTO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x33

    move-object/from16 v14, v48

    const/16 v26, 0x33

    goto/16 :goto_37

    :sswitch_45
    move-object/from16 v58, v14

    const-string v14, "CHAT_VOICECHAT_END"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x67

    move-object/from16 v14, v48

    const/16 v26, 0x67

    goto/16 :goto_37

    :sswitch_46
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_AUDIO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x38

    move-object/from16 v14, v48

    const/16 v26, 0x38

    goto/16 :goto_37

    :sswitch_47
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_STICKER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x52

    move-object/from16 v14, v48

    const/16 v26, 0x52

    goto/16 :goto_37

    :sswitch_48
    move-object/from16 v58, v14

    const-string v14, "MESSAGES"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x2e

    move-object/from16 v14, v48

    const/16 v26, 0x2e

    goto/16 :goto_37

    :sswitch_49
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GIF"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5c

    move-object/from16 v14, v48

    const/16 v26, 0x5c

    goto/16 :goto_37

    :sswitch_4a
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5a

    move-object/from16 v14, v48

    const/16 v26, 0x5a

    goto/16 :goto_37

    :sswitch_4b
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_DOC"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x51

    move-object/from16 v14, v48

    const/16 v26, 0x51

    goto/16 :goto_37

    :sswitch_4c
    move-object/from16 v58, v14

    const-string v14, "CHAT_VOICECHAT_INVITE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x66

    move-object/from16 v14, v48

    const/16 v26, 0x66

    goto/16 :goto_37

    :sswitch_4d
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_PAID_MEDIA"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xc

    move-object/from16 v14, v48

    const/16 v26, 0xc

    goto/16 :goto_37

    :sswitch_4e
    move-object/from16 v58, v14

    const-string v14, "CHAT_LEFT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6b

    move-object/from16 v14, v48

    const/16 v26, 0x6b

    goto/16 :goto_37

    :sswitch_4f
    move-object/from16 v58, v14

    const-string v14, "PINNED_GIVEAWAY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7e

    move-object/from16 v14, v48

    const/16 v26, 0x7e

    goto/16 :goto_37

    :sswitch_50
    move-object/from16 v58, v14

    const-string v14, "CHAT_ADD_YOU"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x61

    move-object/from16 v14, v48

    const/16 v26, 0x61

    goto/16 :goto_37

    :sswitch_51
    move-object/from16 v58, v14

    const-string v14, "REACT_TEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8a

    move-object/from16 v14, v48

    const/16 v26, 0x8a

    goto/16 :goto_37

    :sswitch_52
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_PAID_MEDIA"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xb

    move-object/from16 v14, v48

    const/16 v26, 0xb

    goto/16 :goto_37

    :sswitch_53
    move-object/from16 v58, v14

    const-string v14, "CHAT_DELETE_MEMBER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x69

    move-object/from16 v14, v48

    const/16 v26, 0x69

    goto/16 :goto_37

    :sswitch_54
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_SCREENSHOT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x16

    move-object/from16 v14, v48

    const/16 v26, 0x16

    goto/16 :goto_37

    :sswitch_55
    move-object/from16 v58, v14

    const-string v14, "AUTH_REGION"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8d

    move-object/from16 v14, v48

    const/16 v26, 0x8d

    goto/16 :goto_37

    :sswitch_56
    move-object/from16 v58, v14

    const-string v14, "CONTACT_JOINED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8b

    move-object/from16 v14, v48

    const/16 v26, 0x8b

    goto/16 :goto_37

    :sswitch_57
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_INVOICE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x5f

    move-object/from16 v14, v48

    const/16 v26, 0x5f

    goto/16 :goto_37

    :sswitch_58
    move-object/from16 v58, v14

    const-string v14, "ENCRYPTION_REQUEST"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8f

    move-object/from16 v14, v48

    const/16 v26, 0x8f

    goto/16 :goto_37

    :sswitch_59
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GEOLIVE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x20

    move-object/from16 v14, v48

    const/16 v26, 0x20

    goto/16 :goto_37

    :sswitch_5a
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_SAME_WALLPAPER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x2

    goto/16 :goto_37

    :sswitch_5b
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_TODO_APPEND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3e

    move-object/from16 v14, v48

    const/16 v26, 0x3e

    goto/16 :goto_37

    :sswitch_5c
    move-object/from16 v58, v14

    const-string v14, "CHAT_DELETE_YOU"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6a

    move-object/from16 v14, v48

    const/16 v26, 0x6a

    goto/16 :goto_37

    :sswitch_5d
    move-object/from16 v58, v14

    const-string v14, "AUTH_UNKNOWN"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x8c

    move-object/from16 v14, v48

    const/16 v26, 0x8c

    goto/16 :goto_37

    :sswitch_5e
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_WALLPAPER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x3

    goto/16 :goto_37

    :sswitch_5f
    move-object/from16 v58, v14

    const-string v14, "PINNED_GIF"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x87

    move-object/from16 v14, v48

    const/16 v26, 0x87

    goto/16 :goto_37

    :sswitch_60
    move-object/from16 v58, v14

    const-string v14, "PINNED_GEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x82

    move-object/from16 v14, v48

    const/16 v26, 0x82

    goto/16 :goto_37

    :sswitch_61
    move-object/from16 v58, v14

    const-string v14, "PINNED_DOC"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7a

    move-object/from16 v14, v48

    const/16 v26, 0x7a

    goto/16 :goto_37

    :sswitch_62
    move-object/from16 v58, v14

    const-string v14, "PINNED_GAME_SCORE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x85

    move-object/from16 v14, v48

    const/16 v26, 0x85

    goto/16 :goto_37

    :sswitch_63
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_STICKER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x37

    move-object/from16 v14, v48

    const/16 v26, 0x37

    goto/16 :goto_37

    :sswitch_64
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_UNIQUE_STARGIFT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x8

    goto/16 :goto_37

    :sswitch_65
    move-object/from16 v58, v14

    const-string v14, "PHONE_CALL_REQUEST"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x91

    move-object/from16 v14, v48

    const/16 v26, 0x91

    goto/16 :goto_37

    :sswitch_66
    move-object/from16 v58, v14

    const-string v14, "PINNED_STICKER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7b

    move-object/from16 v14, v48

    const/16 v26, 0x7b

    goto/16 :goto_37

    :sswitch_67
    move-object/from16 v58, v14

    move-object/from16 v14, v49

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v49, v14

    move-object/from16 v14, v48

    if-eqz v16, :cond_4b

    const/16 v26, 0x1

    goto/16 :goto_37

    :sswitch_68
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_TODO_DONE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3d

    move-object/from16 v14, v48

    const/16 v26, 0x3d

    goto/16 :goto_37

    :sswitch_69
    move-object/from16 v58, v14

    const-string v14, "PINNED_TODO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x81

    move-object/from16 v14, v48

    const/16 v26, 0x81

    goto/16 :goto_37

    :sswitch_6a
    move-object/from16 v58, v14

    const-string v14, "PINNED_TEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x75

    move-object/from16 v14, v48

    const/16 v26, 0x75

    goto/16 :goto_37

    :sswitch_6b
    move-object/from16 v58, v14

    const-string v14, "PINNED_QUIZ"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x7f

    move-object/from16 v14, v48

    const/16 v26, 0x7f

    goto/16 :goto_37

    :sswitch_6c
    move-object/from16 v58, v14

    const-string v14, "PINNED_POLL"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x80

    move-object/from16 v14, v48

    const/16 v26, 0x80

    goto/16 :goto_37

    :sswitch_6d
    move-object/from16 v58, v14

    const-string v14, "PINNED_GAME"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x84

    move-object/from16 v14, v48

    const/16 v26, 0x84

    goto/16 :goto_37

    :sswitch_6e
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_CONTACT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x54

    move-object/from16 v14, v48

    const/16 v26, 0x54

    goto/16 :goto_37

    :sswitch_6f
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_VIDEO_SECRET"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x15

    move-object/from16 v14, v48

    const/16 v26, 0x15

    goto/16 :goto_37

    :sswitch_70
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_TODO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3c

    move-object/from16 v14, v48

    const/16 v26, 0x3c

    goto/16 :goto_37

    :sswitch_71
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_TEXT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/4 v14, 0x6

    move-object/from16 v14, v48

    const/16 v26, 0x6

    goto/16 :goto_37

    :sswitch_72
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_QUIZ"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3a

    move-object/from16 v14, v48

    const/16 v26, 0x3a

    goto/16 :goto_37

    :sswitch_73
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_POLL"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3b

    move-object/from16 v14, v48

    const/16 v26, 0x3b

    goto/16 :goto_37

    :sswitch_74
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GAME"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x42

    move-object/from16 v14, v48

    const/16 v26, 0x42

    goto/16 :goto_37

    :sswitch_75
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_FWDS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x43

    move-object/from16 v14, v48

    const/16 v26, 0x43

    goto/16 :goto_37

    :sswitch_76
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_DOCS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x47

    move-object/from16 v14, v48

    const/16 v26, 0x47

    goto/16 :goto_37

    :sswitch_77
    move-object/from16 v58, v14

    const-string v14, "PINNED_INVOICE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x86

    move-object/from16 v14, v48

    const/16 v26, 0x86

    goto/16 :goto_37

    :sswitch_78
    move-object/from16 v58, v14

    const-string v14, "CHAT_RETURNED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6c

    move-object/from16 v14, v48

    const/16 v26, 0x6c

    goto/16 :goto_37

    :sswitch_79
    move-object/from16 v58, v14

    const-string v14, "ENCRYPTED_MESSAGE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x88

    move-object/from16 v14, v48

    const/16 v26, 0x88

    goto/16 :goto_37

    :sswitch_7a
    move-object/from16 v58, v14

    const-string v14, "CONF_CALL_MISSED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x89

    move-object/from16 v14, v48

    const/16 v26, 0x89

    goto/16 :goto_37

    :sswitch_7b
    move-object/from16 v58, v14

    const-string v14, "ENCRYPTION_ACCEPT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x90

    move-object/from16 v14, v48

    const/16 v26, 0x90

    goto/16 :goto_37

    :sswitch_7c
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_VIDEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x14

    move-object/from16 v14, v48

    const/16 v26, 0x14

    goto/16 :goto_37

    :sswitch_7d
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_STORY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x10

    goto/16 :goto_37

    :sswitch_7e
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_ROUND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x17

    move-object/from16 v14, v48

    const/16 v26, 0x17

    goto/16 :goto_37

    :sswitch_7f
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_PHOTO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x12

    move-object/from16 v14, v48

    const/16 v26, 0x12

    goto/16 :goto_37

    :sswitch_80
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_MUTED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x92

    move-object/from16 v14, v48

    const/16 v26, 0x92

    goto/16 :goto_37

    :sswitch_81
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_AUDIO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x1a

    move-object/from16 v14, v48

    const/16 v26, 0x1a

    goto/16 :goto_37

    :sswitch_82
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_RECURRING_PAY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v14, v48

    const/16 v26, 0x4

    goto/16 :goto_37

    :sswitch_83
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGES"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x74

    move-object/from16 v14, v48

    const/16 v26, 0x74

    goto/16 :goto_37

    :sswitch_84
    move-object/from16 v58, v14

    const-string v14, "PINNED_PAID_MEDIA"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0xd

    move-object/from16 v14, v48

    const/16 v26, 0xd

    goto/16 :goto_37

    :sswitch_85
    move-object/from16 v58, v14

    const-string v14, "CHAT_VOICECHAT_START"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x65

    move-object/from16 v14, v48

    const/16 v26, 0x65

    goto/16 :goto_37

    :sswitch_86
    move-object/from16 v58, v14

    const-string v14, "CHAT_REQ_JOINED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6e

    move-object/from16 v14, v48

    const/16 v26, 0x6e

    goto/16 :goto_37

    :sswitch_87
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x4a

    move-object/from16 v14, v48

    const/16 v26, 0x4a

    goto/16 :goto_37

    :sswitch_88
    move-object/from16 v58, v14

    const-string v14, "CHAT_MESSAGE_TODO_APPEND"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x59

    move-object/from16 v14, v48

    const/16 v26, 0x59

    goto/16 :goto_37

    :sswitch_89
    move-object/from16 v58, v14

    const-string v14, "CHAT_JOINED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x6d

    move-object/from16 v14, v48

    const/16 v26, 0x6d

    goto/16 :goto_37

    :sswitch_8a
    move-object/from16 v58, v14

    const-string v14, "CHAT_ADD_MEMBER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x64

    move-object/from16 v14, v48

    const/16 v26, 0x64

    goto/16 :goto_37

    :sswitch_8b
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GIF"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x41

    move-object/from16 v14, v48

    const/16 v26, 0x41

    goto/16 :goto_37

    :sswitch_8c
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_GEO"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x3f

    move-object/from16 v14, v48

    const/16 v26, 0x3f

    goto/16 :goto_37

    :sswitch_8d
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_DOC"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x36

    move-object/from16 v14, v48

    const/16 v26, 0x36

    goto/16 :goto_37

    :sswitch_8e
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_VIDEOS"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x45

    move-object/from16 v14, v48

    const/16 v26, 0x45

    goto :goto_37

    :sswitch_8f
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_STICKER"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x19

    move-object/from16 v14, v48

    const/16 v26, 0x19

    goto :goto_37

    :sswitch_90
    move-object/from16 v58, v14

    const-string v14, "CHAT_CREATED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x60

    move-object/from16 v14, v48

    const/16 v26, 0x60

    goto :goto_37

    :sswitch_91
    move-object/from16 v58, v14

    const-string v14, "CHANNEL_MESSAGE_CONTACT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    const/16 v14, 0x39

    move-object/from16 v14, v48

    const/16 v26, 0x39

    goto :goto_37

    :sswitch_92
    move-object/from16 v58, v14

    const-string v14, "MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_6

    if-eqz v14, :cond_4a

    const/16 v14, 0x23

    move-object/from16 v14, v48

    const/16 v26, 0x23

    goto :goto_37

    :sswitch_93
    move-object/from16 v58, v14

    move-object/from16 v14, v48

    :try_start_43
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_9

    if-eqz v16, :cond_4b

    const/16 v26, 0x0

    :goto_37
    move-object/from16 v48, v14

    goto :goto_39

    :cond_4b
    :goto_38
    move-object/from16 v48, v14

    const/16 v26, -0x1

    :goto_39
    const-string v14, "NotificationPinnedPaidMedia"

    move-object/from16 v16, v1

    const-string v1, "NotificationMessageFew"

    move-object/from16 v17, v3

    const-string v3, "NotificationGroupFew"

    move-wide/from16 v59, v12

    const-string v12, "ChannelMessageFew"

    packed-switch v26, :pswitch_data_0

    :try_start_44
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled loc_key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_6

    :cond_4c
    :pswitch_0
    move-object/from16 v35, v25

    move/from16 v3, v31

    move/from16 v6, v47

    :goto_3a
    const/16 v38, 0x0

    goto/16 :goto_64

    :pswitch_1
    move-object/from16 v1, v30

    :try_start_45
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_9

    move/from16 v6, v47

    :try_start_46
    invoke-static {v1, v6, v12, v13}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hideByCallId(Landroid/content/Context;IJ)V

    const/4 v1, 0x1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4d

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionMissedCallConference:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_7

    :try_start_47
    new-array v12, v1, [Ljava/lang/Object;

    aput-object v2, v12, v9
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_8

    :try_start_48
    invoke-static {v3, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :catchall_7
    move-exception v0

    :goto_3b
    move-object v1, v0

    move v5, v6

    goto/16 :goto_74

    :goto_3c
    move-object v1, v0

    goto/16 :goto_60

    :catchall_8
    move-exception v0

    goto :goto_3c

    :cond_4d
    const-string v1, "NotificationActionMissedCallConferenceOther"

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_7

    const/4 v12, 0x1

    :try_start_49
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_8

    :try_start_4a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :catchall_9
    move-exception v0

    move/from16 v6, v47

    goto :goto_3b

    :pswitch_2
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SecretChatName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_58

    :pswitch_3
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_4e

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_7

    const/4 v13, 0x2

    :try_start_4b
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_8

    :try_start_4c
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_4e
    if-eqz v9, :cond_4f

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_7

    const/4 v13, 0x2

    :try_start_4d
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_8

    :try_start_4e
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_4f
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_7

    const/4 v9, 0x1

    :try_start_4f
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_8

    :try_start_50
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_4
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_50

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_7

    const/4 v13, 0x2

    :try_start_51
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_8

    :try_start_52
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_50
    if-eqz v9, :cond_51

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoice:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_7

    const/4 v13, 0x2

    :try_start_53
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_8

    :try_start_54
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_51
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_7

    const/4 v9, 0x1

    :try_start_55
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_8

    :try_start_56
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_5
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_52

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_7

    const/4 v13, 0x2

    :try_start_57
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_8

    :try_start_58
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_52
    if-eqz v9, :cond_53

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScore:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_7

    const/4 v13, 0x2

    :try_start_59
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_8

    :try_start_5a
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_53
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_7

    const/4 v9, 0x1

    :try_start_5b
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_8

    :try_start_5c
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_6
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_54

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_7

    const/4 v13, 0x2

    :try_start_5d
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_8

    :try_start_5e
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_54
    if-eqz v9, :cond_55

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_7

    const/4 v13, 0x2

    :try_start_5f
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_8

    :try_start_60
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_55
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_7

    const/4 v9, 0x1

    :try_start_61
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_8

    :try_start_62
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_7
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_56

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_7

    const/4 v13, 0x2

    :try_start_63
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_8

    :try_start_64
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_56
    if-eqz v9, :cond_57

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_7

    const/4 v13, 0x2

    :try_start_65
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_8

    :try_start_66
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_57
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_7

    const/4 v9, 0x1

    :try_start_67
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_8

    :try_start_68
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_8
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_58

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_7

    const/4 v13, 0x2

    :try_start_69
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_8

    :try_start_6a
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_58
    if-eqz v9, :cond_59

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_7

    const/4 v13, 0x2

    :try_start_6b
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_8

    :try_start_6c
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_59
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_7

    const/4 v9, 0x1

    :try_start_6d
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_8

    :try_start_6e
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_9
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_5a

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodoUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_7

    const/4 v13, 0x2

    :try_start_6f
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_8

    :try_start_70
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5a
    if-eqz v9, :cond_5b

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodo2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x2

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_7

    const/4 v12, 0x3

    :try_start_71
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    aput-object v13, v12, v14

    const/4 v3, 0x2

    aput-object v2, v12, v3
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_8

    :try_start_72
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5b
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodoChannel2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_7

    const/4 v13, 0x2

    :try_start_73
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_8

    :try_start_74
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_a
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_5c

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_7

    const/4 v13, 0x2

    :try_start_75
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_8

    :try_start_76
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5c
    if-eqz v9, :cond_5d

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x2

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_7

    const/4 v12, 0x3

    :try_start_77
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    aput-object v13, v12, v14

    const/4 v3, 0x2

    aput-object v2, v12, v3
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_8

    :try_start_78
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5d
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_7

    const/4 v13, 0x2

    :try_start_79
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_8

    :try_start_7a
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_b
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_5e

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_7

    const/4 v13, 0x2

    :try_start_7b
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_8

    :try_start_7c
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5e
    if-eqz v9, :cond_5f

    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x2

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_7

    const/4 v12, 0x3

    :try_start_7d
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    aput-object v13, v12, v14

    const/4 v3, 0x2

    aput-object v2, v12, v3
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_8

    :try_start_7e
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_5f
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_7

    const/4 v13, 0x2

    :try_start_7f
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_8

    :try_start_80
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_c
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationPinnedGiveaway:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_7

    const/4 v9, 0x1

    :try_start_81
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_8

    :try_start_82
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_d
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_60

    const-string v1, "NotificationActionPinnedContactUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_7

    const/4 v14, 0x2

    :try_start_83
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_8

    :try_start_84
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_60
    if-eqz v9, :cond_61

    const-string v1, "NotificationActionPinnedContact2"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x2

    aget-object v14, v2, v13

    const/16 v18, 0x1

    aget-object v2, v2, v18
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_7

    const/4 v13, 0x3

    :try_start_85
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    aput-object v14, v13, v18

    const/4 v9, 0x2

    aput-object v2, v13, v9
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_8

    :try_start_86
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_61
    const-string v1, "NotificationActionPinnedContactChannel2"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_7

    const/4 v14, 0x2

    :try_start_87
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_8

    :try_start_88
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_e
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_62

    const-string v1, "NotificationActionPinnedVoiceUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_7

    const/4 v14, 0x2

    :try_start_89
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_8

    :try_start_8a
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_62
    if-eqz v9, :cond_63

    const-string v1, "NotificationActionPinnedVoice"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_7

    const/4 v14, 0x2

    :try_start_8b
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_8

    :try_start_8c
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_63
    const-string v1, "NotificationActionPinnedVoiceChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_7

    const/4 v12, 0x1

    :try_start_8d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_8

    :try_start_8e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_f
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_65

    array-length v1, v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_64

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "NotificationActionPinnedStickerEmojiUser"

    sget v9, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    aget-object v2, v2, v3
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_7

    const/4 v14, 0x2

    :try_start_8f
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v12

    aput-object v2, v14, v3
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_8

    :try_start_90
    invoke-static {v1, v9, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_64
    const-string v1, "NotificationActionPinnedStickerUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_7

    const/4 v12, 0x1

    :try_start_91
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_8

    :try_start_92
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_65
    if-eqz v9, :cond_67

    array-length v1, v2

    const/4 v3, 0x2

    if-le v1, v3, :cond_66

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "NotificationActionPinnedStickerEmoji"

    sget v9, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    aget-object v14, v2, v3

    const/16 v18, 0x1

    aget-object v2, v2, v18
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_7

    const/4 v3, 0x3

    :try_start_93
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v12

    aput-object v14, v3, v18

    const/4 v12, 0x2

    aput-object v2, v3, v12
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_8

    :try_start_94
    invoke-static {v1, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_66
    const-string v1, "NotificationActionPinnedSticker"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_7

    const/4 v14, 0x2

    :try_start_95
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_8

    :try_start_96
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_67
    array-length v1, v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_68

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "NotificationActionPinnedStickerEmojiChannel"

    sget v9, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    aget-object v2, v2, v3
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_7

    const/4 v14, 0x2

    :try_start_97
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v12

    aput-object v2, v14, v3
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_8

    :try_start_98
    invoke-static {v1, v9, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_68
    const-string v1, "NotificationActionPinnedStickerChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_7

    const/4 v12, 0x1

    :try_start_99
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_8

    :try_start_9a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_10
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_69

    const-string v1, "NotificationActionPinnedFileUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_7

    const/4 v14, 0x2

    :try_start_9b
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_8

    :try_start_9c
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_69
    if-eqz v9, :cond_6a

    const-string v1, "NotificationActionPinnedFile"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_7

    const/4 v14, 0x2

    :try_start_9d
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_8

    :try_start_9e
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6a
    const-string v1, "NotificationActionPinnedFileChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_7

    const/4 v12, 0x1

    :try_start_9f
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_8

    :try_start_a0
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_11
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_6b

    const-string v1, "NotificationActionPinnedRoundUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_7

    const/4 v14, 0x2

    :try_start_a1
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_8

    :try_start_a2
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6b
    if-eqz v9, :cond_6c

    const-string v1, "NotificationActionPinnedRound"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_7

    const/4 v14, 0x2

    :try_start_a3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_8

    :try_start_a4
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6c
    const-string v1, "NotificationActionPinnedRoundChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_7

    const/4 v12, 0x1

    :try_start_a5
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_8

    :try_start_a6
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_12
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_6d

    const-string v1, "NotificationActionPinnedVideoUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_7

    const/4 v14, 0x2

    :try_start_a7
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_8

    :try_start_a8
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6d
    if-eqz v9, :cond_6e

    const-string v1, "NotificationActionPinnedVideo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_7

    const/4 v14, 0x2

    :try_start_a9
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_8

    :try_start_aa
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6e
    const-string v1, "NotificationActionPinnedVideoChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_7

    const/4 v12, 0x1

    :try_start_ab
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_8

    :try_start_ac
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_13
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_6f

    const-string v1, "NotificationActionPinnedPhotoUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_7

    const/4 v14, 0x2

    :try_start_ad
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_8

    :try_start_ae
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_6f
    if-eqz v9, :cond_70

    const-string v1, "NotificationActionPinnedPhoto"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_7

    const/4 v14, 0x2

    :try_start_af
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_8

    :try_start_b0
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_70
    const-string v1, "NotificationActionPinnedPhotoChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_7

    const/4 v12, 0x1

    :try_start_b1
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_8

    :try_start_b2
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_14
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_71

    const-string v1, "NotificationActionPinnedNoTextUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_7

    const/4 v14, 0x2

    :try_start_b3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_8

    :try_start_b4
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_71
    if-eqz v9, :cond_72

    const-string v1, "NotificationActionPinnedNoText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_7

    const/4 v14, 0x2

    :try_start_b5
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_8

    :try_start_b6
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_72
    const-string v1, "NotificationActionPinnedNoTextChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_7

    const/4 v12, 0x1

    :try_start_b7
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_8

    :try_start_b8
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_15
    move/from16 v6, v47

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_73

    const-string v1, "NotificationActionPinnedTextUser"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_7

    const/4 v14, 0x2

    :try_start_b9
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_8

    :try_start_ba
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_73
    if-eqz v9, :cond_74

    const-string v1, "NotificationActionPinnedText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_7

    const/4 v13, 0x3

    :try_start_bb
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_bb
    .catchall {:try_start_bb .. :try_end_bb} :catchall_8

    :try_start_bc
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :cond_74
    const-string v1, "NotificationActionPinnedTextChannel"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_bc
    .catchall {:try_start_bc .. :try_end_bc} :catchall_7

    const/4 v14, 0x2

    :try_start_bd
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_bd
    .catchall {:try_start_bd .. :try_end_bd} :catchall_8

    :try_start_be
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_16
    move/from16 v6, v47

    const-string v1, "NotificationGroupAlbum"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupAlbum:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_be
    .catchall {:try_start_be .. :try_end_be} :catchall_7

    const/4 v14, 0x2

    :try_start_bf
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_bf
    .catchall {:try_start_bf .. :try_end_bf} :catchall_8

    :try_start_c0
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_17
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v13, 0x2

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v29

    invoke-static {v9, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c0
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_7

    const/4 v9, 0x3

    :try_start_c1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const/4 v12, 0x2

    aput-object v2, v9, v12
    :try_end_c1
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_8

    :try_start_c2
    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_18
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v13, 0x2

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v28

    invoke-static {v9, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c2
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_7

    const/4 v9, 0x3

    :try_start_c3
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const/4 v12, 0x2

    aput-object v2, v9, v12
    :try_end_c3
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_8

    :try_start_c4
    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_19
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v13, 0x2

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v27

    invoke-static {v9, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c4
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_7

    const/4 v9, 0x3

    :try_start_c5
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const/4 v12, 0x2

    aput-object v2, v9, v12
    :try_end_c5
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_8

    :try_start_c6
    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_1a
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v13, 0x2

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v24

    invoke-static {v9, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c6
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_7

    const/4 v9, 0x3

    :try_start_c7
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const/4 v12, 0x2

    aput-object v2, v9, v12
    :try_end_c7
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_8

    :try_start_c8
    invoke-static {v3, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_1b
    move/from16 v6, v47

    const-string v1, "NotificationGroupForwardedFew"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupForwardedFew:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/4 v13, 0x2

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v38

    invoke-static {v9, v2, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c8
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_7

    const/4 v9, 0x3

    :try_start_c9
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v9, v13

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const/4 v12, 0x2

    aput-object v2, v9, v12
    :try_end_c9
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_8

    :try_start_ca
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_1c
    move/from16 v6, v47

    const-string v1, "UserAcceptedToGroupPushWithGroup"

    sget v3, Lorg/telegram/messenger/R$string;->UserAcceptedToGroupPushWithGroup:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ca
    .catchall {:try_start_ca .. :try_end_ca} :catchall_7

    const/4 v14, 0x2

    :try_start_cb
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_cb
    .catchall {:try_start_cb .. :try_end_cb} :catchall_8

    :try_start_cc
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_1d
    move/from16 v6, v47

    const-string v1, "NotificationGroupAddSelfMega"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_cc
    .catchall {:try_start_cc .. :try_end_cc} :catchall_7

    const/4 v14, 0x2

    :try_start_cd
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_cd
    .catchall {:try_start_cd .. :try_end_cd} :catchall_8

    :try_start_ce
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_1e
    move/from16 v6, v47

    const-string v1, "NotificationGroupAddSelf"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ce
    .catchall {:try_start_ce .. :try_end_ce} :catchall_7

    const/4 v14, 0x2

    :try_start_cf
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_cf
    .catchall {:try_start_cf .. :try_end_cf} :catchall_8

    :try_start_d0
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_1f
    move/from16 v6, v47

    const-string v1, "NotificationGroupLeftMember"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_d0
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_7

    const/4 v14, 0x2

    :try_start_d1
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_d1
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_8

    :try_start_d2
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_20
    move/from16 v6, v47

    const-string v1, "NotificationGroupKickYou"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_d2
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_7

    const/4 v14, 0x2

    :try_start_d3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_d3
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_8

    :try_start_d4
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_21
    move/from16 v6, v47

    const-string v1, "NotificationGroupKickMember"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v9, 0x1

    aget-object v13, v2, v9

    array-length v9, v2

    const/4 v14, 0x2

    if-gt v9, v14, :cond_75

    :goto_3d
    const/4 v2, 0x3

    goto :goto_3e

    :cond_75
    aget-object v2, v2, v14
    :try_end_d4
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_7

    move-object/from16 v18, v2

    goto :goto_3d

    :goto_3e
    :try_start_d5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v2, v9

    const/4 v9, 0x1

    aput-object v13, v2, v9

    aput-object v18, v2, v14
    :try_end_d5
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_8

    :try_start_d6
    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_22
    move/from16 v6, v47

    const-string v1, "NotificationGroupInvitedYouToCall"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_d6
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_7

    const/4 v14, 0x2

    :try_start_d7
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_d7
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_8

    :try_start_d8
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_23
    move/from16 v6, v47

    const-string v1, "NotificationGroupEndedCall"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupEndedCall:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_d8
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_7

    const/4 v14, 0x2

    :try_start_d9
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_d9
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_8

    :try_start_da
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_24
    move/from16 v6, v47

    const-string v1, "NotificationGroupInvitedToCall"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_da
    .catchall {:try_start_da .. :try_end_da} :catchall_7

    const/4 v13, 0x3

    :try_start_db
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_db
    .catchall {:try_start_db .. :try_end_db} :catchall_8

    :try_start_dc
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_25
    move/from16 v6, v47

    const-string v1, "NotificationGroupCreatedCall"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_dc
    .catchall {:try_start_dc .. :try_end_dc} :catchall_7

    const/4 v14, 0x2

    :try_start_dd
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_dd
    .catchall {:try_start_dd .. :try_end_dd} :catchall_8

    :try_start_de
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_26
    move/from16 v6, v47

    const-string v1, "NotificationGroupAddMember"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_de
    .catchall {:try_start_de .. :try_end_de} :catchall_7

    const/4 v13, 0x3

    :try_start_df
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_df
    .catchall {:try_start_df .. :try_end_df} :catchall_8

    :try_start_e0
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_27
    move/from16 v6, v47

    const-string v1, "NotificationEditedGroupPhoto"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_e0
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_7

    const/4 v14, 0x2

    :try_start_e1
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_e1
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_8

    :try_start_e2
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_28
    move/from16 v6, v47

    const-string v1, "NotificationEditedGroupName"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_7

    const/4 v14, 0x2

    :try_start_e3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_e3
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_8

    :try_start_e4
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_29
    move/from16 v6, v47

    const-string v1, "NotificationInvitedToGroup"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_e4
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_7

    const/4 v14, 0x2

    :try_start_e5
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_8

    :try_start_e6
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_2a
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupInvoice"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupInvoice:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_7

    const/4 v13, 0x3

    :try_start_e7
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_e7
    .catchall {:try_start_e7 .. :try_end_e7} :catchall_8

    :try_start_e8
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    sget v2, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    :goto_40
    move-object/from16 v3, v57

    goto/16 :goto_5e

    :pswitch_2b
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupGameScored"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGameScored:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v19, v2, v18

    const/16 v21, 0x3

    aget-object v2, v2, v21
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_7

    const/4 v13, 0x4

    :try_start_e9
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v19, v13, v18

    aput-object v2, v13, v21
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_8

    :try_start_ea
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_2c
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupGame"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_7

    const/4 v13, 0x3

    :try_start_eb
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_eb
    .catchall {:try_start_eb .. :try_end_eb} :catchall_8

    :try_start_ec
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_41
    sget v2, Lorg/telegram/messenger/R$string;->AttachGame:I

    goto :goto_40

    :pswitch_2d
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupGif"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ec
    .catchall {:try_start_ec .. :try_end_ec} :catchall_7

    const/4 v14, 0x2

    :try_start_ed
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_ed
    .catchall {:try_start_ed .. :try_end_ed} :catchall_8

    :try_start_ee
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_42
    sget v2, Lorg/telegram/messenger/R$string;->AttachGif:I

    goto :goto_40

    :pswitch_2e
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupLiveLocation"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_ee
    .catchall {:try_start_ee .. :try_end_ee} :catchall_7

    const/4 v14, 0x2

    :try_start_ef
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_ef
    .catchall {:try_start_ef .. :try_end_ef} :catchall_8

    :try_start_f0
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_43
    sget v2, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    goto :goto_40

    :pswitch_2f
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupMap"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_f0
    .catchall {:try_start_f0 .. :try_end_f0} :catchall_7

    const/4 v14, 0x2

    :try_start_f1
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_f1
    .catchall {:try_start_f1 .. :try_end_f1} :catchall_8

    :try_start_f2
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_44
    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    goto/16 :goto_40

    :pswitch_30
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodoAppend2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v13, v2, v12

    const/4 v14, 0x2

    aget-object v2, v2, v14
    :try_end_f2
    .catchall {:try_start_f2 .. :try_end_f2} :catchall_7

    const/4 v14, 0x3

    :try_start_f3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v3

    aput-object v13, v14, v12

    const/4 v3, 0x2

    aput-object v2, v14, v3
    :try_end_f3
    .catchall {:try_start_f3 .. :try_end_f3} :catchall_8

    :try_start_f4
    invoke-static {v1, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_31
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodoDone2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v13, v2, v12

    const/4 v14, 0x2

    aget-object v2, v2, v14
    :try_end_f4
    .catchall {:try_start_f4 .. :try_end_f4} :catchall_7

    const/4 v14, 0x3

    :try_start_f5
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v3

    aput-object v13, v14, v12

    const/4 v3, 0x2

    aput-object v2, v14, v3
    :try_end_f5
    .catchall {:try_start_f5 .. :try_end_f5} :catchall_8

    :try_start_f6
    invoke-static {v1, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_32
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodo2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v13, v2, v12

    const/4 v14, 0x2

    aget-object v2, v2, v14
    :try_end_f6
    .catchall {:try_start_f6 .. :try_end_f6} :catchall_7

    const/4 v14, 0x3

    :try_start_f7
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v3

    aput-object v13, v14, v12

    const/4 v3, 0x2

    aput-object v2, v14, v3
    :try_end_f7
    .catchall {:try_start_f7 .. :try_end_f7} :catchall_8

    :try_start_f8
    invoke-static {v1, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_45
    sget v2, Lorg/telegram/messenger/R$string;->Todo:I

    goto/16 :goto_40

    :pswitch_33
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v13, v2, v12

    const/4 v14, 0x2

    aget-object v2, v2, v14
    :try_end_f8
    .catchall {:try_start_f8 .. :try_end_f8} :catchall_7

    const/4 v14, 0x3

    :try_start_f9
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v3

    aput-object v13, v14, v12

    const/4 v3, 0x2

    aput-object v2, v14, v3
    :try_end_f9
    .catchall {:try_start_f9 .. :try_end_f9} :catchall_8

    :try_start_fa
    invoke-static {v1, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_46
    sget v2, Lorg/telegram/messenger/R$string;->Poll:I

    goto/16 :goto_40

    :pswitch_34
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupQuiz2"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_fa
    .catchall {:try_start_fa .. :try_end_fa} :catchall_7

    const/4 v13, 0x3

    :try_start_fb
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_fb
    .catchall {:try_start_fb .. :try_end_fb} :catchall_8

    :try_start_fc
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->PollQuiz:I

    goto/16 :goto_40

    :pswitch_35
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupContact2"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_fc
    .catchall {:try_start_fc .. :try_end_fc} :catchall_7

    const/4 v13, 0x3

    :try_start_fd
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_fd
    .catchall {:try_start_fd .. :try_end_fd} :catchall_8

    :try_start_fe
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    sget v2, Lorg/telegram/messenger/R$string;->AttachContact:I

    goto/16 :goto_40

    :pswitch_36
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupAudio"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_fe
    .catchall {:try_start_fe .. :try_end_fe} :catchall_7

    const/4 v14, 0x2

    :try_start_ff
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_ff
    .catchall {:try_start_ff .. :try_end_ff} :catchall_8

    :try_start_100
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_48
    sget v2, Lorg/telegram/messenger/R$string;->AttachAudio:I

    goto/16 :goto_40

    :pswitch_37
    move/from16 v6, v47

    array-length v1, v2

    const/4 v3, 0x2

    if-le v1, v3, :cond_76

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "NotificationMessageGroupStickerEmoji"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v19, v2, v18
    :try_end_100
    .catchall {:try_start_100 .. :try_end_100} :catchall_7

    const/4 v13, 0x3

    :try_start_101
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v19, v13, v18
    :try_end_101
    .catchall {:try_start_101 .. :try_end_101} :catchall_8

    :try_start_102
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v18

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_59

    :cond_76
    move-object/from16 v9, v35

    const-string v1, "NotificationMessageGroupSticker"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v18, v2, v14
    :try_end_102
    .catchall {:try_start_102 .. :try_end_102} :catchall_7

    const/4 v14, 0x2

    :try_start_103
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v12

    const/4 v12, 0x1

    aput-object v18, v14, v12
    :try_end_103
    .catchall {:try_start_103 .. :try_end_103} :catchall_8

    :try_start_104
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :pswitch_38
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupDocument"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_104
    .catchall {:try_start_104 .. :try_end_104} :catchall_7

    const/4 v14, 0x2

    :try_start_105
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_105
    .catchall {:try_start_105 .. :try_end_105} :catchall_8

    :try_start_106
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    sget v2, Lorg/telegram/messenger/R$string;->AttachDocument:I

    goto/16 :goto_40

    :pswitch_39
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupRound"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_106
    .catchall {:try_start_106 .. :try_end_106} :catchall_7

    const/4 v14, 0x2

    :try_start_107
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_107
    .catchall {:try_start_107 .. :try_end_107} :catchall_8

    :try_start_108
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4b
    sget v2, Lorg/telegram/messenger/R$string;->AttachRound:I

    goto/16 :goto_40

    :pswitch_3a
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupVideo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_108
    .catchall {:try_start_108 .. :try_end_108} :catchall_7

    const/4 v14, 0x2

    :try_start_109
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_109
    .catchall {:try_start_109 .. :try_end_109} :catchall_8

    :try_start_10a
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4c
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideo:I

    goto/16 :goto_40

    :pswitch_3b
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupPhoto"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_10a
    .catchall {:try_start_10a .. :try_end_10a} :catchall_7

    const/4 v14, 0x2

    :try_start_10b
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_10b
    .catchall {:try_start_10b .. :try_end_10b} :catchall_8

    :try_start_10c
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4d
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    goto/16 :goto_40

    :pswitch_3c
    move/from16 v6, v47

    const-string v1, "NotificationChatStory"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationChatStory:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_10c
    .catchall {:try_start_10c .. :try_end_10c} :catchall_7

    const/4 v12, 0x1

    :try_start_10d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_10d
    .catchall {:try_start_10d .. :try_end_10d} :catchall_8

    :try_start_10e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    goto/16 :goto_40

    :pswitch_3d
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupNoText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_10e
    .catchall {:try_start_10e .. :try_end_10e} :catchall_7

    const/4 v14, 0x2

    :try_start_10f
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_10f
    .catchall {:try_start_10f .. :try_end_10f} :catchall_8

    :try_start_110
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4f
    sget v2, Lorg/telegram/messenger/R$string;->Message:I

    goto/16 :goto_40

    :pswitch_3e
    move/from16 v6, v47

    const-string v1, "NotificationMessageGroupText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v19, v2, v18
    :try_end_110
    .catchall {:try_start_110 .. :try_end_110} :catchall_7

    const/4 v13, 0x3

    :try_start_111
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v19, v13, v18
    :try_end_111
    .catchall {:try_start_111 .. :try_end_111} :catchall_8

    :try_start_112
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v2, v18
    :try_end_112
    .catchall {:try_start_112 .. :try_end_112} :catchall_7

    :goto_50
    move-object/from16 v25, v2

    move-object/from16 v3, v57

    goto/16 :goto_5f

    :pswitch_3f
    move/from16 v6, v47

    const/4 v1, 0x2

    :try_start_113
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_113} :catch_0
    .catchall {:try_start_113 .. :try_end_113} :catchall_7

    goto :goto_51

    :catch_0
    const/4 v1, 0x1

    :goto_51
    :try_start_114
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageChatStarsGiveaway2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    new-array v13, v9, [Ljava/lang/Object;

    move-object/from16 v9, v23

    invoke-static {v9, v1, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x3

    aget-object v2, v2, v9
    :try_end_114
    .catchall {:try_start_114 .. :try_end_114} :catchall_7

    const/4 v13, 0x4

    :try_start_115
    new-array v13, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v12, v13, v18

    const/4 v12, 0x1

    aput-object v14, v13, v12

    const/4 v12, 0x2

    aput-object v1, v13, v12

    aput-object v2, v13, v9
    :try_end_115
    .catchall {:try_start_115 .. :try_end_115} :catchall_8

    :try_start_116
    invoke-static {v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_52
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    goto/16 :goto_40

    :pswitch_40
    move/from16 v6, v47

    const-string v1, "NotificationMessageChatGiveaway"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageChatGiveaway:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v19, v2, v18

    const/16 v21, 0x3

    aget-object v2, v2, v21
    :try_end_116
    .catchall {:try_start_116 .. :try_end_116} :catchall_7

    const/4 v13, 0x4

    :try_start_117
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v19, v13, v18

    aput-object v2, v13, v21
    :try_end_117
    .catchall {:try_start_117 .. :try_end_117} :catchall_8

    :try_start_118
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    :pswitch_41
    move/from16 v6, v47

    const-string v1, "ChannelMessageAlbum"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageAlbum:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_118
    .catchall {:try_start_118 .. :try_end_118} :catchall_7

    const/4 v12, 0x1

    :try_start_119
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_119
    .catchall {:try_start_119 .. :try_end_119} :catchall_8

    :try_start_11a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_42
    move-object/from16 v9, v29

    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v3, 0x0

    aget-object v13, v2, v3

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_11a
    .catchall {:try_start_11a .. :try_end_11a} :catchall_7

    const/4 v9, 0x2

    :try_start_11b
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3
    :try_end_11b
    .catchall {:try_start_11b .. :try_end_11b} :catchall_8

    :try_start_11c
    invoke-static {v12, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_43
    move-object/from16 v9, v28

    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v3, 0x0

    aget-object v13, v2, v3

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_11c
    .catchall {:try_start_11c .. :try_end_11c} :catchall_7

    const/4 v9, 0x2

    :try_start_11d
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3
    :try_end_11d
    .catchall {:try_start_11d .. :try_end_11d} :catchall_8

    :try_start_11e
    invoke-static {v12, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_44
    move-object/from16 v9, v27

    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v3, 0x0

    aget-object v13, v2, v3

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_11e
    .catchall {:try_start_11e .. :try_end_11e} :catchall_7

    const/4 v9, 0x2

    :try_start_11f
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3
    :try_end_11f
    .catchall {:try_start_11f .. :try_end_11f} :catchall_8

    :try_start_120
    invoke-static {v12, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_45
    move-object/from16 v9, v24

    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v3, 0x0

    aget-object v13, v2, v3

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_120
    .catchall {:try_start_120 .. :try_end_120} :catchall_7

    const/4 v9, 0x2

    :try_start_121
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3
    :try_end_121
    .catchall {:try_start_121 .. :try_end_121} :catchall_8

    :try_start_122
    invoke-static {v12, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_46
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const-string v13, "ForwardedMessageCount"

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2
    :try_end_122
    .catchall {:try_start_122 .. :try_end_122} :catchall_7

    const/4 v13, 0x2

    :try_start_123
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    const/4 v3, 0x1

    aput-object v2, v13, v3
    :try_end_123
    .catchall {:try_start_123 .. :try_end_123} :catchall_8

    :try_start_124
    invoke-static {v12, v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_47
    move/from16 v6, v47

    const-string v1, "NotificationMessageGame"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_124
    .catchall {:try_start_124 .. :try_end_124} :catchall_7

    const/4 v12, 0x1

    :try_start_125
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_125
    .catchall {:try_start_125 .. :try_end_125} :catchall_8

    :try_start_126
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_41

    :pswitch_48
    move/from16 v6, v47

    const-string v1, "ChannelMessageGIF"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_126
    .catchall {:try_start_126 .. :try_end_126} :catchall_7

    const/4 v12, 0x1

    :try_start_127
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_127
    .catchall {:try_start_127 .. :try_end_127} :catchall_8

    :try_start_128
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_42

    :pswitch_49
    move/from16 v6, v47

    const-string v1, "ChannelMessageLiveLocation"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_128
    .catchall {:try_start_128 .. :try_end_128} :catchall_7

    const/4 v12, 0x1

    :try_start_129
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_129
    .catchall {:try_start_129 .. :try_end_129} :catchall_8

    :try_start_12a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_43

    :pswitch_4a
    move/from16 v6, v47

    const-string v1, "ChannelMessageMap"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_12a
    .catchall {:try_start_12a .. :try_end_12a} :catchall_7

    const/4 v12, 0x1

    :try_start_12b
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_12b
    .catchall {:try_start_12b .. :try_end_12b} :catchall_8

    :try_start_12c
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    :pswitch_4b
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodoAppend2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x2

    aget-object v2, v2, v12
    :try_end_12c
    .catchall {:try_start_12c .. :try_end_12c} :catchall_7

    :try_start_12d
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    const/4 v3, 0x1

    aput-object v2, v12, v3
    :try_end_12d
    .catchall {:try_start_12d .. :try_end_12d} :catchall_8

    :try_start_12e
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_4c
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodoDone2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x2

    aget-object v2, v2, v12
    :try_end_12e
    .catchall {:try_start_12e .. :try_end_12e} :catchall_7

    :try_start_12f
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    const/4 v3, 0x1

    aput-object v2, v12, v3
    :try_end_12f
    .catchall {:try_start_12f .. :try_end_12f} :catchall_8

    :try_start_130
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_4d
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodo2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_130
    .catchall {:try_start_130 .. :try_end_130} :catchall_7

    const/4 v13, 0x2

    :try_start_131
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_131
    .catchall {:try_start_131 .. :try_end_131} :catchall_8

    :try_start_132
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_45

    :pswitch_4e
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_132
    .catchall {:try_start_132 .. :try_end_132} :catchall_7

    const/4 v13, 0x2

    :try_start_133
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_133
    .catchall {:try_start_133 .. :try_end_133} :catchall_8

    :try_start_134
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_46

    :pswitch_4f
    move/from16 v6, v47

    const-string v1, "ChannelMessageQuiz2"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageQuiz2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_134
    .catchall {:try_start_134 .. :try_end_134} :catchall_7

    const/4 v14, 0x2

    :try_start_135
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_135
    .catchall {:try_start_135 .. :try_end_135} :catchall_8

    :try_start_136
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_53
    sget v2, Lorg/telegram/messenger/R$string;->QuizPoll:I

    goto/16 :goto_40

    :pswitch_50
    move/from16 v6, v47

    const-string v1, "ChannelMessageContact2"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageContact2:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_136
    .catchall {:try_start_136 .. :try_end_136} :catchall_7

    const/4 v14, 0x2

    :try_start_137
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_137
    .catchall {:try_start_137 .. :try_end_137} :catchall_8

    :try_start_138
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_47

    :pswitch_51
    move/from16 v6, v47

    const-string v1, "ChannelMessageAudio"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_138
    .catchall {:try_start_138 .. :try_end_138} :catchall_7

    const/4 v12, 0x1

    :try_start_139
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_139
    .catchall {:try_start_139 .. :try_end_139} :catchall_8

    :try_start_13a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_48

    :pswitch_52
    move-object/from16 v9, v35

    move/from16 v6, v47

    array-length v1, v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_77

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "ChannelMessageStickerEmoji"

    sget v12, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/4 v13, 0x0

    aget-object v14, v2, v13

    aget-object v18, v2, v3
    :try_end_13a
    .catchall {:try_start_13a .. :try_end_13a} :catchall_7

    const/4 v3, 0x2

    :try_start_13b
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    aput-object v18, v3, v13
    :try_end_13b
    .catchall {:try_start_13b .. :try_end_13b} :catchall_8

    :try_start_13c
    invoke-static {v1, v12, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v13

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_49

    :cond_77
    const-string v1, "ChannelMessageSticker"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_13c
    .catchall {:try_start_13c .. :try_end_13c} :catchall_7

    const/4 v12, 0x1

    :try_start_13d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_13d
    .catchall {:try_start_13d .. :try_end_13d} :catchall_8

    :try_start_13e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_54
    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    goto/16 :goto_40

    :pswitch_53
    move/from16 v6, v47

    const-string v1, "ChannelMessageDocument"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_13e
    .catchall {:try_start_13e .. :try_end_13e} :catchall_7

    const/4 v12, 0x1

    :try_start_13f
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_13f
    .catchall {:try_start_13f .. :try_end_13f} :catchall_8

    :try_start_140
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :pswitch_54
    move/from16 v6, v47

    const-string v1, "ChannelMessageRound"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_140
    .catchall {:try_start_140 .. :try_end_140} :catchall_7

    const/4 v12, 0x1

    :try_start_141
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_141
    .catchall {:try_start_141 .. :try_end_141} :catchall_8

    :try_start_142
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4b

    :pswitch_55
    move/from16 v6, v47

    const-string v1, "ChannelMessageVideo"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_142
    .catchall {:try_start_142 .. :try_end_142} :catchall_7

    const/4 v12, 0x1

    :try_start_143
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_143
    .catchall {:try_start_143 .. :try_end_143} :catchall_8

    :try_start_144
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4c

    :pswitch_56
    move/from16 v6, v47

    const-string v1, "ChannelMessagePhoto"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_144
    .catchall {:try_start_144 .. :try_end_144} :catchall_7

    const/4 v12, 0x1

    :try_start_145
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_145
    .catchall {:try_start_145 .. :try_end_145} :catchall_8

    :try_start_146
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4d

    :pswitch_57
    move/from16 v6, v47

    const-string v1, "NotificationChannelStory"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationChannelStory:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_146
    .catchall {:try_start_146 .. :try_end_146} :catchall_7

    const/4 v12, 0x1

    :try_start_147
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_147
    .catchall {:try_start_147 .. :try_end_147} :catchall_8

    :try_start_148
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4e

    :pswitch_58
    move/from16 v6, v47

    const-string v1, "ChannelMessageNoText"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_148
    .catchall {:try_start_148 .. :try_end_148} :catchall_7

    const/4 v12, 0x1

    :try_start_149
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_149
    .catchall {:try_start_149 .. :try_end_149} :catchall_8

    :try_start_14a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_14a
    .catchall {:try_start_14a .. :try_end_14a} :catchall_7

    goto/16 :goto_4f

    :pswitch_59
    move-object/from16 v9, v23

    move/from16 v6, v47

    const/4 v1, 0x1

    :try_start_14b
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14b} :catch_1
    .catchall {:try_start_14b .. :try_end_14b} :catchall_7

    goto :goto_55

    :catch_1
    const/4 v1, 0x1

    :goto_55
    :try_start_14c
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageChannelStarsGiveaway2:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v1, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    aget-object v2, v2, v9
    :try_end_14c
    .catchall {:try_start_14c .. :try_end_14c} :catchall_7

    const/4 v14, 0x3

    :try_start_14d
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v12

    const/4 v12, 0x1

    aput-object v1, v14, v12

    aput-object v2, v14, v9
    :try_end_14d
    .catchall {:try_start_14d .. :try_end_14d} :catchall_8

    :try_start_14e
    invoke-static {v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_52

    :pswitch_5a
    move/from16 v6, v47

    const-string v1, "NotificationMessageChannelGiveaway"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageChannelGiveaway:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_14e
    .catchall {:try_start_14e .. :try_end_14e} :catchall_7

    const/4 v13, 0x3

    :try_start_14f
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_14f
    .catchall {:try_start_14f .. :try_end_14f} :catchall_8

    :try_start_150
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_52

    :pswitch_5b
    move/from16 v6, v47

    const-string v1, "NotificationMessageAlbum"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageAlbum:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_150
    .catchall {:try_start_150 .. :try_end_150} :catchall_7

    const/4 v12, 0x1

    :try_start_151
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_151
    .catchall {:try_start_151 .. :try_end_151} :catchall_8

    :try_start_152
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_152
    .catchall {:try_start_152 .. :try_end_152} :catchall_7

    goto/16 :goto_57

    :pswitch_5c
    move-object/from16 v9, v23

    move/from16 v6, v47

    const/4 v1, 0x1

    :try_start_153
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_153} :catch_2
    .catchall {:try_start_153 .. :try_end_153} :catchall_7

    goto :goto_56

    :catch_2
    const/4 v1, 0x1

    :goto_56
    :try_start_154
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageStarsGiveaway2:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v1, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    aget-object v2, v2, v9
    :try_end_154
    .catchall {:try_start_154 .. :try_end_154} :catchall_7

    const/4 v14, 0x3

    :try_start_155
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v12

    const/4 v12, 0x1

    aput-object v1, v14, v12

    aput-object v2, v14, v9
    :try_end_155
    .catchall {:try_start_155 .. :try_end_155} :catchall_8

    :try_start_156
    invoke-static {v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_5d
    move/from16 v6, v47

    const-string v1, "NotificationMessageGiveaway"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGiveaway:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_156
    .catchall {:try_start_156 .. :try_end_156} :catchall_7

    const/4 v13, 0x3

    :try_start_157
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_157
    .catchall {:try_start_157 .. :try_end_157} :catchall_8

    :try_start_158
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_5e
    move/from16 v6, v47

    const-string v1, "NotificationMessageGiftCode"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGiftCode:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const-string v13, "Months"

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v13, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_158
    .catchall {:try_start_158 .. :try_end_158} :catchall_7

    const/4 v13, 0x2

    :try_start_159
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v2, v13, v9
    :try_end_159
    .catchall {:try_start_159 .. :try_end_159} :catchall_8

    :try_start_15a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_5f
    move-object/from16 v9, v29

    move/from16 v6, v47

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_15a
    .catchall {:try_start_15a .. :try_end_15a} :catchall_7

    const/4 v9, 0x2

    :try_start_15b
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object v2, v9, v12
    :try_end_15b
    .catchall {:try_start_15b .. :try_end_15b} :catchall_8

    :try_start_15c
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_60
    move-object/from16 v9, v28

    move/from16 v6, v47

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_15c
    .catchall {:try_start_15c .. :try_end_15c} :catchall_7

    const/4 v9, 0x2

    :try_start_15d
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object v2, v9, v12
    :try_end_15d
    .catchall {:try_start_15d .. :try_end_15d} :catchall_8

    :try_start_15e
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    :pswitch_61
    move-object/from16 v9, v27

    move/from16 v6, v47

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_15e
    .catchall {:try_start_15e .. :try_end_15e} :catchall_7

    const/4 v9, 0x2

    :try_start_15f
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object v2, v9, v12
    :try_end_15f
    .catchall {:try_start_15f .. :try_end_15f} :catchall_8

    :try_start_160
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    :pswitch_62
    move-object/from16 v9, v24

    move/from16 v6, v47

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_160
    .catchall {:try_start_160 .. :try_end_160} :catchall_7

    const/4 v9, 0x2

    :try_start_161
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object v2, v9, v12
    :try_end_161
    .catchall {:try_start_161 .. :try_end_161} :catchall_8

    :try_start_162
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    :pswitch_63
    move-object/from16 v9, v38

    move/from16 v6, v47

    const-string v1, "NotificationMessageForwardFew"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageForwardFew:I

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v2, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_162
    .catchall {:try_start_162 .. :try_end_162} :catchall_7

    const/4 v9, 0x2

    :try_start_163
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    aput-object v2, v9, v12
    :try_end_163
    .catchall {:try_start_163 .. :try_end_163} :catchall_8

    :try_start_164
    invoke-static {v1, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_57
    move-object/from16 v14, v58

    :goto_58
    move-object/from16 v35, v1

    move-object/from16 v58, v14

    move/from16 v3, v31

    const/16 v38, 0x1

    goto/16 :goto_64

    :pswitch_64
    move/from16 v6, v47

    const-string v1, "NotificationMessageInvoice"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageInvoice:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_164
    .catchall {:try_start_164 .. :try_end_164} :catchall_7

    const/4 v14, 0x2

    :try_start_165
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_165
    .catchall {:try_start_165 .. :try_end_165} :catchall_8

    :try_start_166
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :pswitch_65
    move/from16 v6, v47

    const-string v1, "NotificationMessageGameScored"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGameScored:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13

    const/16 v18, 0x2

    aget-object v2, v2, v18
    :try_end_166
    .catchall {:try_start_166 .. :try_end_166} :catchall_7

    const/4 v13, 0x3

    :try_start_167
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    aput-object v2, v13, v18
    :try_end_167
    .catchall {:try_start_167 .. :try_end_167} :catchall_8

    :try_start_168
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :pswitch_66
    move/from16 v6, v47

    const-string v1, "NotificationMessageGame"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_168
    .catchall {:try_start_168 .. :try_end_168} :catchall_7

    const/4 v14, 0x2

    :try_start_169
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_169
    .catchall {:try_start_169 .. :try_end_169} :catchall_8

    :try_start_16a
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_41

    :pswitch_67
    move/from16 v6, v47

    const-string v1, "NotificationMessageGif"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_16a
    .catchall {:try_start_16a .. :try_end_16a} :catchall_7

    const/4 v12, 0x1

    :try_start_16b
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_16b
    .catchall {:try_start_16b .. :try_end_16b} :catchall_8

    :try_start_16c
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_42

    :pswitch_68
    move/from16 v6, v47

    const-string v1, "NotificationMessageLiveLocation"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_16c
    .catchall {:try_start_16c .. :try_end_16c} :catchall_7

    const/4 v12, 0x1

    :try_start_16d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_16d
    .catchall {:try_start_16d .. :try_end_16d} :catchall_8

    :try_start_16e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_43

    :pswitch_69
    move/from16 v6, v47

    const-string v1, "NotificationMessageMap"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_16e
    .catchall {:try_start_16e .. :try_end_16e} :catchall_7

    const/4 v12, 0x1

    :try_start_16f
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_16f
    .catchall {:try_start_16f .. :try_end_16f} :catchall_8

    :try_start_170
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    :pswitch_6a
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageTodo2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_170
    .catchall {:try_start_170 .. :try_end_170} :catchall_7

    const/4 v13, 0x2

    :try_start_171
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_171
    .catchall {:try_start_171 .. :try_end_171} :catchall_8

    :try_start_172
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_45

    :pswitch_6b
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_172
    .catchall {:try_start_172 .. :try_end_172} :catchall_7

    const/4 v13, 0x2

    :try_start_173
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_173
    .catchall {:try_start_173 .. :try_end_173} :catchall_8

    :try_start_174
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_46

    :pswitch_6c
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageQuiz2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_174
    .catchall {:try_start_174 .. :try_end_174} :catchall_7

    const/4 v13, 0x2

    :try_start_175
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_175
    .catchall {:try_start_175 .. :try_end_175} :catchall_8

    :try_start_176
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_53

    :pswitch_6d
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v12, 0x1

    aget-object v2, v2, v12
    :try_end_176
    .catchall {:try_start_176 .. :try_end_176} :catchall_7

    const/4 v13, 0x2

    :try_start_177
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v3

    aput-object v2, v13, v12
    :try_end_177
    .catchall {:try_start_177 .. :try_end_177} :catchall_8

    :try_start_178
    invoke-static {v1, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_47

    :pswitch_6e
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_178
    .catchall {:try_start_178 .. :try_end_178} :catchall_7

    const/4 v9, 0x1

    :try_start_179
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v3
    :try_end_179
    .catchall {:try_start_179 .. :try_end_179} :catchall_8

    :try_start_17a
    invoke-static {v1, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_48

    :pswitch_6f
    move-object/from16 v9, v35

    move/from16 v6, v47

    array-length v1, v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_78

    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string v1, "NotificationMessageStickerEmoji"

    sget v12, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/4 v13, 0x0

    aget-object v14, v2, v13

    aget-object v18, v2, v3
    :try_end_17a
    .catchall {:try_start_17a .. :try_end_17a} :catchall_7

    const/4 v3, 0x2

    :try_start_17b
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    aput-object v18, v3, v13
    :try_end_17b
    .catchall {:try_start_17b .. :try_end_17b} :catchall_8

    :try_start_17c
    invoke-static {v1, v12, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v13

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_49

    :goto_59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_50

    :cond_78
    const-string v1, "NotificationMessageSticker"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_17c
    .catchall {:try_start_17c .. :try_end_17c} :catchall_7

    const/4 v12, 0x1

    :try_start_17d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_17d
    .catchall {:try_start_17d .. :try_end_17d} :catchall_8

    :try_start_17e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_54

    :pswitch_70
    move/from16 v6, v47

    const-string v1, "NotificationMessageDocument"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_17e
    .catchall {:try_start_17e .. :try_end_17e} :catchall_7

    const/4 v12, 0x1

    :try_start_17f
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_17f
    .catchall {:try_start_17f .. :try_end_17f} :catchall_8

    :try_start_180
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :pswitch_71
    move/from16 v6, v47

    const-string v1, "NotificationMessageRound"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_180
    .catchall {:try_start_180 .. :try_end_180} :catchall_7

    const/4 v12, 0x1

    :try_start_181
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_181
    .catchall {:try_start_181 .. :try_end_181} :catchall_8

    :try_start_182
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4b

    :pswitch_72
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->ActionTakeScreenshoot:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "un1"

    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :pswitch_73
    move/from16 v6, v47

    const-string v1, "NotificationMessageSDVideo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_182
    .catchall {:try_start_182 .. :try_end_182} :catchall_7

    const/4 v12, 0x1

    :try_start_183
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_183
    .catchall {:try_start_183 .. :try_end_183} :catchall_8

    :try_start_184
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    goto/16 :goto_40

    :pswitch_74
    move/from16 v6, v47

    const-string v1, "NotificationMessageVideo"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_184
    .catchall {:try_start_184 .. :try_end_184} :catchall_7

    const/4 v12, 0x1

    :try_start_185
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_185
    .catchall {:try_start_185 .. :try_end_185} :catchall_8

    :try_start_186
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4c

    :pswitch_75
    move/from16 v6, v47

    const-string v1, "NotificationMessageSDPhoto"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_186
    .catchall {:try_start_186 .. :try_end_186} :catchall_7

    const/4 v12, 0x1

    :try_start_187
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_187
    .catchall {:try_start_187 .. :try_end_187} :catchall_8

    :try_start_188
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    goto/16 :goto_40

    :pswitch_76
    move/from16 v6, v47

    const-string v1, "NotificationMessagePhoto"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_188
    .catchall {:try_start_188 .. :try_end_188} :catchall_7

    const/4 v12, 0x1

    :try_start_189
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_189
    .catchall {:try_start_189 .. :try_end_189} :catchall_8

    :try_start_18a
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4d

    :pswitch_77
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->StoryNotificationMention:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5a
    move-object/from16 v35, v1

    :goto_5b
    move/from16 v3, v31

    goto/16 :goto_3a

    :pswitch_78
    move/from16 v6, v47

    const-string v1, "NotificationStory"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationStory:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_18a
    .catchall {:try_start_18a .. :try_end_18a} :catchall_7

    const/4 v12, 0x1

    :try_start_18b
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_18b
    .catchall {:try_start_18b .. :try_end_18b} :catchall_8

    :try_start_18c
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4e

    :pswitch_79
    move/from16 v6, v47

    const-string v1, "NotificationMessageNoText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_18c
    .catchall {:try_start_18c .. :try_end_18c} :catchall_7

    const/4 v12, 0x1

    :try_start_18d
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_18d
    .catchall {:try_start_18d .. :try_end_18d} :catchall_8

    :try_start_18e
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    :pswitch_7a
    move/from16 v6, v47

    const/4 v1, 0x1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x0

    aget-object v12, v2, v9
    :try_end_18e
    .catchall {:try_start_18e .. :try_end_18e} :catchall_7

    :try_start_18f
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v12, v13, v9
    :try_end_18f
    .catchall {:try_start_18f .. :try_end_18f} :catchall_8

    :try_start_190
    invoke-static {v14, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v2, v2, v9
    :try_end_190
    .catchall {:try_start_190 .. :try_end_190} :catchall_7

    :try_start_191
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_191
    .catchall {:try_start_191 .. :try_end_191} :catchall_8

    :try_start_192
    invoke-static {v14, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5c
    move-object/from16 v25, v1

    move-object v1, v12

    goto :goto_5a

    :pswitch_7b
    move/from16 v6, v47

    const/4 v1, 0x1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x0

    aget-object v12, v2, v9
    :try_end_192
    .catchall {:try_start_192 .. :try_end_192} :catchall_7

    :try_start_193
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v12, v13, v9
    :try_end_193
    .catchall {:try_start_193 .. :try_end_193} :catchall_8

    :try_start_194
    invoke-static {v14, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v2, v2, v9
    :try_end_194
    .catchall {:try_start_194 .. :try_end_194} :catchall_7

    :try_start_195
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_195
    .catchall {:try_start_195 .. :try_end_195} :catchall_8

    :try_start_196
    invoke-static {v14, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :pswitch_7c
    move/from16 v6, v47

    const/4 v1, 0x2

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v9, "NotificationChatMessagePaidMedia"

    const/4 v12, 0x0

    aget-object v13, v2, v12

    const/4 v14, 0x1

    aget-object v2, v2, v14
    :try_end_196
    .catchall {:try_start_196 .. :try_end_196} :catchall_7

    :try_start_197
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v12

    aput-object v2, v1, v14
    :try_end_197
    .catchall {:try_start_197 .. :try_end_197} :catchall_8

    :try_start_198
    invoke-static {v9, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    move-object/from16 v9, v19

    invoke-static {v9, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5d
    move-object/from16 v25, v2

    goto/16 :goto_5a

    :pswitch_7d
    move-object/from16 v9, v19

    move/from16 v6, v47

    const/4 v1, 0x1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v12, "NotificationChannelMessagePaidMedia"

    const/4 v13, 0x0

    aget-object v2, v2, v13
    :try_end_198
    .catchall {:try_start_198 .. :try_end_198} :catchall_7

    :try_start_199
    new-array v14, v1, [Ljava/lang/Object;

    aput-object v2, v14, v13
    :try_end_199
    .catchall {:try_start_199 .. :try_end_199} :catchall_8

    :try_start_19a
    invoke-static {v12, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v9, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :pswitch_7e
    move-object/from16 v9, v19

    move/from16 v6, v47

    const/4 v1, 0x1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v12, "NotificationMessagePaidMedia"

    const/4 v13, 0x0

    aget-object v2, v2, v13
    :try_end_19a
    .catchall {:try_start_19a .. :try_end_19a} :catchall_7

    :try_start_19b
    new-array v14, v1, [Ljava/lang/Object;

    aput-object v2, v14, v13
    :try_end_19b
    .catchall {:try_start_19b .. :try_end_19b} :catchall_8

    :try_start_19c
    invoke-static {v12, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v9, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :pswitch_7f
    move/from16 v6, v47

    const/4 v1, 0x0

    aget-object v3, v2, v1

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageUniqueStarGiftUpgrade:I
    :try_end_19c
    .catchall {:try_start_19c .. :try_end_19c} :catchall_7

    const/4 v9, 0x1

    :try_start_19d
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v3, v12, v1
    :try_end_19d
    .catchall {:try_start_19d .. :try_end_19d} :catchall_8

    :try_start_19e
    invoke-static {v2, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueUpgradeNotification:I

    goto/16 :goto_5e

    :pswitch_80
    move/from16 v6, v47

    const/4 v1, 0x0

    aget-object v3, v2, v1

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageUniqueStarGift:I
    :try_end_19e
    .catchall {:try_start_19e .. :try_end_19e} :catchall_7

    const/4 v9, 0x1

    :try_start_19f
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v3, v12, v1
    :try_end_19f
    .catchall {:try_start_19f .. :try_end_19f} :catchall_8

    :try_start_1a0
    invoke-static {v2, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueNotification:I

    goto/16 :goto_5e

    :pswitch_81
    move/from16 v6, v47

    const/4 v1, 0x0

    aget-object v3, v2, v1

    const-string v9, "NotificationMessageStarGift"

    const/4 v12, 0x1

    aget-object v13, v2, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v14, v2, v1
    :try_end_1a0
    .catchall {:try_start_1a0 .. :try_end_1a0} :catchall_7

    move-object/from16 v18, v3

    :try_start_1a1
    new-array v3, v12, [Ljava/lang/Object;

    aput-object v14, v3, v1
    :try_end_1a1
    .catchall {:try_start_1a1 .. :try_end_1a1} :catchall_8

    :try_start_1a2
    invoke-static {v9, v13, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Gift2Notification"

    aget-object v2, v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    move-object/from16 v3, v18

    goto :goto_5f

    :pswitch_82
    move/from16 v6, v47

    const-string v1, "NotificationMessageText"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v14, v2, v13
    :try_end_1a2
    .catchall {:try_start_1a2 .. :try_end_1a2} :catchall_7

    const/4 v13, 0x2

    :try_start_1a3
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9
    :try_end_1a3
    .catchall {:try_start_1a3 .. :try_end_1a3} :catchall_8

    :try_start_1a4
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v2, v9

    goto/16 :goto_50

    :pswitch_83
    move/from16 v6, v47

    const-string v1, "NotificationMessageRecurringPay"

    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageRecurringPay:I

    const/4 v9, 0x0

    aget-object v12, v2, v9

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_1a4
    .catchall {:try_start_1a4 .. :try_end_1a4} :catchall_7

    const/4 v14, 0x2

    :try_start_1a5
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v9

    aput-object v2, v14, v13
    :try_end_1a5
    .catchall {:try_start_1a5 .. :try_end_1a5} :catchall_8

    :try_start_1a6
    invoke-static {v1, v3, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :pswitch_84
    move/from16 v6, v47

    const-string v1, "ActionSetWallpaperForThisChat"

    sget v3, Lorg/telegram/messenger/R$string;->ActionSetWallpaperForThisChat:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_1a6
    .catchall {:try_start_1a6 .. :try_end_1a6} :catchall_7

    const/4 v12, 0x1

    :try_start_1a7
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_1a7
    .catchall {:try_start_1a7 .. :try_end_1a7} :catchall_8

    :try_start_1a8
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->WallpaperNotification:I

    goto/16 :goto_40

    :pswitch_85
    move/from16 v6, v47

    const-string v1, "ActionSetSameWallpaperForThisChat"

    sget v3, Lorg/telegram/messenger/R$string;->ActionSetSameWallpaperForThisChat:I

    const/4 v9, 0x0

    aget-object v2, v2, v9
    :try_end_1a8
    .catchall {:try_start_1a8 .. :try_end_1a8} :catchall_7

    const/4 v12, 0x1

    :try_start_1a9
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v9
    :try_end_1a9
    .catchall {:try_start_1a9 .. :try_end_1a9} :catchall_8

    :try_start_1aa
    invoke-static {v1, v3, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->WallpaperSameNotification:I

    goto/16 :goto_40

    :goto_5e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_5f
    move-object/from16 v35, v1

    move-object/from16 v57, v3

    goto/16 :goto_5b

    :goto_60
    move-object/from16 v2, p1

    move v14, v6

    :goto_61
    const/4 v3, -0x1

    goto/16 :goto_78

    :pswitch_86
    move/from16 v6, v47

    const-string v1, "StoryNotificationHidden"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_87
    move/from16 v6, v47

    sget v1, Lorg/telegram/messenger/R$string;->StoryNotificationSingle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_62
    move-object/from16 v35, v1

    move/from16 v3, v34

    goto/16 :goto_3a

    :goto_63
    invoke-static {v8, v2}, Lorg/telegram/messenger/PushListenerController;->getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5a

    :goto_64
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p0

    move-wide/from16 v12, v45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " received message notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_65

    :cond_79
    move-wide/from16 v12, v45

    :goto_65
    if-eqz v35, :cond_8b

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string v2, "REACT_STORY"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    if-lez v3, :cond_7a

    neg-int v3, v3

    :cond_7a
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    if-eqz v25, :cond_7b

    move-object/from16 v2, v25

    goto :goto_66

    :cond_7b
    move-object/from16 v2, v35

    :goto_66
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide/16 v12, 0x3e8

    div-long v12, p2, v12

    long-to-int v2, v12

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-eqz v15, :cond_7c

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    :cond_7c
    if-eqz v50, :cond_7d

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v2, v7

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_7d
    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-eqz v2, :cond_7e

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    move-wide/from16 v4, v42

    goto :goto_67

    :cond_7e
    const-wide/16 v4, 0x0

    cmp-long v2, v42, v4

    if-eqz v2, :cond_7f

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v42

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_67

    :cond_7f
    move-wide/from16 v4, v42

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v12, v40

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :goto_67
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v12, 0x0

    cmp-long v2, v51, v12

    if-eqz v2, :cond_80

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_68

    :cond_80
    const-wide/16 v4, 0x0

    cmp-long v2, v59, v4

    if-eqz v2, :cond_81

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v59

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_68

    :cond_81
    const-wide/16 v4, 0x0

    cmp-long v2, v54, v4

    if-eqz v2, :cond_82

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v54

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_68

    :cond_82
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_68
    if-nez v53, :cond_84

    if-eqz v15, :cond_83

    goto :goto_69

    :cond_83
    const/4 v2, 0x0

    goto :goto_6a

    :cond_84
    :goto_69
    const/4 v2, 0x1

    :goto_6a
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v2, v36

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v2, v37

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v32, v2

    move/from16 v33, v6

    move-object/from16 v34, v1

    move-object/from16 v36, v58

    move-object/from16 v37, v57

    move/from16 v40, v50

    move/from16 v41, v56

    invoke-direct/range {v32 .. v41}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    if-eqz v44, :cond_85

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    move/from16 v9, v44

    iput v9, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    :cond_85
    const-string v4, "REACT_STORY"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->isStoryReactionPush:Z

    if-nez v4, :cond_87

    move-object/from16 v4, v17

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_86

    move-object/from16 v4, v16

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    :cond_86
    const/4 v4, 0x1

    goto :goto_6b

    :cond_87
    const/4 v4, 0x0

    :goto_6b
    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    move-object/from16 v4, v48

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    move-object/from16 v4, v49

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    goto :goto_6c

    :cond_88
    const/4 v5, 0x0

    goto :goto_6d

    :cond_89
    move-object/from16 v4, v49

    :goto_6c
    const/4 v5, 0x1

    :goto_6d
    iput-boolean v5, v2, Lorg/telegram/messenger/MessageObject;->isStoryPush:Z

    const-string v5, "MESSAGE_STORY_MENTION"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v2, Lorg/telegram/messenger/MessageObject;->isStoryMentionPush:Z

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->isStoryPushHidden:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PushListenerController push notification to NotificationsController of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->isStoryReactionPush:Z

    if-nez v1, :cond_8a

    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-nez v1, :cond_8a

    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->isStoryMentionPush:Z

    if-nez v1, :cond_8a

    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->isStoryPush:Z

    if-nez v1, :cond_8a

    iget-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->isStoryPushHidden:Z

    if-nez v1, :cond_8a

    if-nez v53, :cond_8a

    if-nez v15, :cond_8a

    if-lez v3, :cond_8a

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6, v10, v11, v3}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;-><init>(IJI)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8a
    invoke-static {v6}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3, v3, v2}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    :try_end_1aa
    .catchall {:try_start_1aa .. :try_end_1aa} :catchall_7

    move v5, v6

    goto/16 :goto_73

    :cond_8b
    move v5, v6

    goto/16 :goto_72

    :catchall_a
    move-exception v0

    move v6, v14

    goto/16 :goto_3b

    :cond_8c
    move v5, v14

    move-object/from16 v1, v30

    :try_start_1ab
    const-string v2, "CONF_CALL_MISSED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v2}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hideByCallId(Landroid/content/Context;IJ)V

    goto :goto_72

    :catchall_b
    move-exception v0

    :goto_6e
    move-object v1, v0

    goto/16 :goto_74

    :catchall_c
    move-exception v0

    :goto_6f
    move v5, v14

    goto :goto_6e

    :goto_70
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v37

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_71
    if-ge v6, v3, :cond_8e

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_71

    :cond_8d
    move-object/from16 v4, v25

    :cond_8e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, p2

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v6, v6

    cmp-long v9, v2, v6

    if-gez v9, :cond_90

    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v4, :cond_8f

    array-length v2, v4

    const/4 v3, 0x2

    if-le v2, v3, :cond_8f

    aget-object v25, v4, v3

    :cond_8f
    move-object/from16 v36, v25

    const-string v2, "CONF_VIDEOCALL_REQUEST"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    move/from16 v33, v5

    move-wide/from16 v34, v10

    move/from16 v39, v1

    invoke-static/range {v32 .. v40}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->request(Landroid/content/Context;IJLjava/lang/String;JIZ)V

    goto :goto_72

    :cond_90
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v5, v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hide(Landroid/content/Context;II)V

    :cond_91
    :goto_72
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_73
    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    goto/16 :goto_7a

    :catchall_d
    move-exception v0

    move-object/from16 p1, v9

    goto :goto_6f

    :cond_92
    move-object/from16 p1, v9

    move v5, v14

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v5}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_93
    move-object/from16 p1, v9

    move v5, v14

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v5}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_94
    move-object/from16 p1, v9

    move-object v15, v10

    move v5, v14

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    const/4 v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v3, v2

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    const-string v2, "message"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    const-string v2, "announcement"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v5, v2}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;-><init>(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_95
    move-object/from16 p1, v9

    move v5, v14

    const-string v1, "dc"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "addr"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_96

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_96
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1ab
    .catchall {:try_start_1ab .. :try_end_1ab} :catchall_b

    return-void

    :goto_74
    move-object/from16 v2, p1

    move v14, v5

    goto/16 :goto_61

    :catchall_e
    move-exception v0

    move-object/from16 p1, v9

    move-object v1, v0

    move-object/from16 v25, v8

    goto :goto_75

    :catchall_f
    move-exception v0

    move-object/from16 p1, v9

    move-object v1, v0

    :goto_75
    move-object/from16 v2, p1

    move-object/from16 v8, v25

    :goto_76
    const/4 v3, -0x1

    const/4 v14, -0x1

    goto :goto_78

    :goto_77
    move-object/from16 v2, v25

    move-object v8, v2

    goto :goto_76

    :goto_78
    if-eq v14, v3, :cond_97

    invoke-static {v14}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    invoke-static {v14}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    sget-object v3, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_79

    :cond_97
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    :goto_79
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in loc_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " json "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_98
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d742ee8 -> :sswitch_93
        -0x7d2c2cc3 -> :sswitch_92
        -0x7ca9bbb4 -> :sswitch_91
        -0x7a6b9b1f -> :sswitch_90
        -0x79940f3b -> :sswitch_8f
        -0x7897de74 -> :sswitch_8e
        -0x75fd5c9c -> :sswitch_8d
        -0x75fd5283 -> :sswitch_8c
        -0x75fd5210 -> :sswitch_8b
        -0x755ca0a1 -> :sswitch_8a
        -0x740845f0 -> :sswitch_89
        -0x70c5168c -> :sswitch_88
        -0x6d481660 -> :sswitch_87
        -0x665baa8f -> :sswitch_86
        -0x6225bbba -> :sswitch_85
        -0x615a9ca8 -> :sswitch_84
        -0x5b1425ad -> :sswitch_83
        -0x59d54652 -> :sswitch_82
        -0x590636a2 -> :sswitch_81
        -0x585ce10d -> :sswitch_80
        -0x58389446 -> :sswitch_7f
        -0x581920ea -> :sswitch_7e
        -0x5808d983 -> :sswitch_7d
        -0x57e3bdfd -> :sswitch_7c
        -0x575cbebc -> :sswitch_7b
        -0x551df4ff -> :sswitch_7a
        -0x51f367b4 -> :sswitch_79
        -0x51d5692a -> :sswitch_78
        -0x4b5ada5a -> :sswitch_77
        -0x49ae3691 -> :sswitch_76
        -0x49ad2fac -> :sswitch_75
        -0x49ad0cda -> :sswitch_74
        -0x49a8c10d -> :sswitch_73
        -0x49a83677 -> :sswitch_72
        -0x49a7139f -> :sswitch_71
        -0x49a6f086 -> :sswitch_70
        -0x4768bb94 -> :sswitch_6f
        -0x4302c33f -> :sswitch_6e
        -0x40ade407 -> :sswitch_6d
        -0x40a9983a -> :sswitch_6c
        -0x40a90da4 -> :sswitch_6b
        -0x40a7eacc -> :sswitch_6a
        -0x40a7c7b3 -> :sswitch_69
        -0x387d9ed9 -> :sswitch_68
        -0x3528982a -> :sswitch_67
        -0x30dc144a -> :sswitch_66
        -0x2e05f321 -> :sswitch_65
        -0x2a19f928 -> :sswitch_64
        -0x260bd697 -> :sswitch_63
        -0x2330d954 -> :sswitch_62
        -0x231e6bcf -> :sswitch_61
        -0x231e61b6 -> :sswitch_60
        -0x231e6143 -> :sswitch_5f
        -0x1b1ed076 -> :sswitch_5e
        -0x1a3c736d -> :sswitch_5d
        -0x189a094e -> :sswitch_5c
        -0x14a0cc81 -> :sswitch_5b
        -0xe733f5f -> :sswitch_5a
        -0xd9ee8bb -> :sswitch_59
        -0xcbb124d -> :sswitch_58
        -0x6e3a432 -> :sswitch_57
        -0x6b67798 -> :sswitch_56
        -0x677ea95 -> :sswitch_55
        -0x6696b42 -> :sswitch_54
        -0x26a80f9 -> :sswitch_53
        -0x21e9b3b -> :sswitch_52
        0x31f180d -> :sswitch_51
        0x3e3b55a -> :sswitch_50
        0x72dca06 -> :sswitch_4f
        0x8681c8e -> :sswitch_4e
        0xb6c9c30 -> :sswitch_4d
        0xc12ab85 -> :sswitch_4c
        0x127a1e59 -> :sswitch_4b
        0x127a2872 -> :sswitch_4a
        0x127a28e5 -> :sswitch_49
        0x131af14c -> :sswitch_48
        0x139b21de -> :sswitch_47
        0x13bfdb02 -> :sswitch_46
        0x1468b5bf -> :sswitch_45
        0x148d7d5e -> :sswitch_44
        0x14acf0ba -> :sswitch_43
        0x14bd3821 -> :sswitch_42
        0x14e253a7 -> :sswitch_41
        0x1e6d0875 -> :sswitch_40
        0x2443e845 -> :sswitch_3f
        0x24b30ed5 -> :sswitch_3e
        0x2aa5cc8f -> :sswitch_3d
        0x2b736eeb -> :sswitch_3c
        0x2b92e247 -> :sswitch_3b
        0x2bc84534 -> :sswitch_3a
        0x2fce0ba8 -> :sswitch_39
        0x334d105c -> :sswitch_38
        0x35bc5fb5 -> :sswitch_37
        0x38e666d7 -> :sswitch_36
        0x3a3cffda -> :sswitch_35
        0x3b191236 -> :sswitch_34
        0x3c0b2819 -> :sswitch_33
        0x3cc9ad1a -> :sswitch_32
        0x3ccab3ff -> :sswitch_31
        0x3ccad6d1 -> :sswitch_30
        0x3ccf229e -> :sswitch_2f
        0x3ccfad34 -> :sswitch_2e
        0x3cd0d00c -> :sswitch_2d
        0x3cd0f325 -> :sswitch_2c
        0x3edbaa08 -> :sswitch_2b
        0x3f329f93 -> :sswitch_2a
        0x3f33a678 -> :sswitch_29
        0x3f33c94a -> :sswitch_28
        0x3f381517 -> :sswitch_27
        0x3f389fad -> :sswitch_26
        0x3f39c285 -> :sswitch_25
        0x3f39e59e -> :sswitch_24
        0x3ff570b5 -> :sswitch_23
        0x40428597 -> :sswitch_22
        0x422ad58d -> :sswitch_21
        0x4432d8d9 -> :sswitch_20
        0x44aa0fe9 -> :sswitch_1f
        0x452fd3a0 -> :sswitch_1e
        0x45e94fe9 -> :sswitch_1d
        0x49965f84 -> :sswitch_1c
        0x4c5c78c0 -> :sswitch_1b
        0x4c5c82d9 -> :sswitch_1a
        0x4c5c834c -> :sswitch_19
        0x4e210dc6 -> :sswitch_18
        0x4f75c677 -> :sswitch_17
        0x51260bd9 -> :sswitch_16
        0x519d58de -> :sswitch_15
        0x54a85297 -> :sswitch_14
        0x566542b3 -> :sswitch_13
        0x594dba2b -> :sswitch_12
        0x5b6bfeb0 -> :sswitch_11
        0x5bcc8b2a -> :sswitch_10
        0x5c446cb7 -> :sswitch_f
        0x5d120f13 -> :sswitch_e
        0x5d31826f -> :sswitch_d
        0x5d41c9d6 -> :sswitch_c
        0x5d66e55c -> :sswitch_b
        0x6bed2ab5 -> :sswitch_a
        0x6c316928 -> :sswitch_9
        0x6d821178 -> :sswitch_8
        0x74837d31 -> :sswitch_7
        0x7504afb2 -> :sswitch_6
        0x7817407d -> :sswitch_5
        0x78860699 -> :sswitch_4
        0x794b6706 -> :sswitch_3
        0x7a1d30a2 -> :sswitch_2
        0x7d222eb5 -> :sswitch_1
        0x7f90485e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$processRemoteMessage$7(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POST INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$0(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$1(Ljava/lang/String;I)V
    .locals 12

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->setRegId(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_2

    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    cmp-long v6, v0, v3

    if-eqz v6, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sput-boolean v5, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    sput p1, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const/4 v1, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    iput-boolean v5, v6, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-eqz v8, :cond_5

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string v0, "fcm"

    goto :goto_2

    :cond_3
    const-string v0, "hcm"

    :goto_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_token_request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    iput-wide v3, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_token_response"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    sget-wide v10, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 v0, 0x0

    :cond_4
    new-instance v6, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static onDecryptError()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static processRemoteMessage(ILjava/lang/String;J)V
    .locals 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "FCM"

    goto :goto_0

    :cond_0
    const-string p0, "HCM"

    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE START PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :try_start_0
    sget-object p1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finished "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " service, time = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static sendRegistrationToServer(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
