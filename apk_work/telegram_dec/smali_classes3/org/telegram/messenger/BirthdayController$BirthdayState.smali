.class public Lorg/telegram/messenger/BirthdayController$BirthdayState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BirthdayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayState"
.end annotation


# instance fields
.field public final today:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public todayKey:Ljava/lang/String;

.field public final tomorrow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public tomorrowKey:Ljava/lang/String;

.field public final yesterday:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public yesterdayKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->yesterday:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->today:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->tomorrow:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->yesterdayKey:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->todayKey:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->tomorrowKey:Ljava/lang/String;

    return-void
.end method

.method public static from(Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;)Lorg/telegram/messenger/BirthdayController$BirthdayState;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v1, v2, v8}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v2, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    new-instance v10, Lorg/telegram/messenger/BirthdayController$BirthdayState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v1, v7, v6}, Lorg/telegram/messenger/BirthdayController$BirthdayState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_account$TL_contactBirthday;

    iget-object v7, v6, Lorg/telegram/tgnet/tl/TL_account$TL_contactBirthday;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget v11, v7, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    const/4 v12, 0x0

    if-ne v11, v3, :cond_1

    iget v13, v7, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    if-ne v13, v5, :cond_1

    iget-object v7, v10, Lorg/telegram/messenger/BirthdayController$BirthdayState;->today:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    if-ne v11, v8, :cond_2

    iget v13, v7, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    if-ne v13, v9, :cond_2

    iget-object v7, v10, Lorg/telegram/messenger/BirthdayController$BirthdayState;->yesterday:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    if-ne v11, v2, :cond_3

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    if-ne v7, v4, :cond_3

    iget-object v7, v10, Lorg/telegram/messenger/BirthdayController$BirthdayState;->tomorrow:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    move-object v7, v12

    :goto_1
    if-eqz v7, :cond_0

    const/4 v11, 0x0

    :goto_2
    iget-object v13, v0, Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;->users:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_5

    iget-object v13, v0, Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;->users:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v16, v1

    move v15, v2

    iget-wide v1, v6, Lorg/telegram/tgnet/tl/TL_account$TL_contactBirthday;->contact_id:J

    cmp-long v17, v13, v1

    if-nez v17, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$contactBirthdays;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move v2, v15

    move-object/from16 v1, v16

    goto :goto_2

    :cond_5
    move-object/from16 v16, v1

    move v15, v2

    :goto_3
    if-eqz v12, :cond_6

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v2, v15

    move-object/from16 v1, v16

    goto :goto_0

    :cond_7
    return-object v10
.end method


# virtual methods
.method public contains(J)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->yesterday:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_0

    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->today:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_2

    return v2

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->tomorrow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public isTodayEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BirthdayController$BirthdayState;->today:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
