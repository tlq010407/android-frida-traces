.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;ZIIZZIJILjava/util/ArrayList;IIIIIIII)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$0:Lorg/telegram/messenger/MessagesController;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$1:Lorg/telegram/messenger/Timer$Task;

    move v1, p3

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$2:Z

    move v1, p4

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$3:I

    move v1, p5

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$4:I

    move v1, p6

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$5:Z

    move v1, p7

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$6:Z

    move v1, p8

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$7:I

    move-wide v1, p9

    iput-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$8:J

    move v1, p11

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$9:I

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$10:Ljava/util/ArrayList;

    move/from16 v1, p13

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$11:I

    move/from16 v1, p14

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$12:I

    move/from16 v1, p15

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$13:I

    move/from16 v1, p16

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$14:I

    move/from16 v1, p17

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$15:I

    move/from16 v1, p18

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$16:I

    move/from16 v1, p19

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$17:I

    move/from16 v1, p20

    iput v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$18:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$2:Z

    iget v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$3:I

    iget v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$4:I

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$5:Z

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$6:Z

    iget v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$7:I

    iget-wide v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$8:J

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$9:I

    iget-object v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$10:Ljava/util/ArrayList;

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$11:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$12:I

    iget v15, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$13:I

    move-object/from16 v21, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$14:I

    move/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$15:I

    move/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$16:I

    move/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$17:I

    move/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda461;->f$18:I

    move/from16 v20, v1

    move-object/from16 v1, v21

    invoke-static/range {v1 .. v20}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$AFcELMoh6vWrXH7UWGgIULs1bJk(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;ZIIZZIJILjava/util/ArrayList;IIIIIIII)V

    return-void
.end method
