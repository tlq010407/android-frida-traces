.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:J

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$15:Z

.field public final synthetic f$2:Lorg/telegram/messenger/Timer;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;JJIIIIIIIJIZZ)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$0:Lorg/telegram/messenger/MessagesStorage;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$1:Lorg/telegram/messenger/Timer$Task;

    move-object v1, p3

    iput-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$2:Lorg/telegram/messenger/Timer;

    move-wide v1, p4

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$3:J

    move-wide v1, p6

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$4:J

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$5:I

    move v1, p9

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$6:I

    move v1, p10

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$7:I

    move v1, p11

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$8:I

    move v1, p12

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$9:I

    move/from16 v1, p13

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$10:I

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$11:I

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$12:J

    move/from16 v1, p17

    iput v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$13:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$14:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$15:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$2:Lorg/telegram/messenger/Timer;

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$3:J

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$4:J

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$11:I

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$12:J

    move-wide v15, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$13:I

    move/from16 v17, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$14:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$15:Z

    move/from16 v19, v1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static/range {v1 .. v19}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$gNzT097qofQKCWSRNdg7HRCP4dQ(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;JJIIIIIIIJIZZ)V

    return-void
.end method
