.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$14:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$15:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/util/ArrayList;

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$0:Z

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object v1, p3

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    move v1, p4

    iput v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$3:I

    move-object v1, p5

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$5:Ljava/util/ArrayList;

    move v1, p7

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$6:Z

    move v1, p8

    iput v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$7:I

    move-object v1, p9

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    move v1, p11

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$10:Z

    move v1, p12

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$11:Z

    move v1, p13

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$12:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$13:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$14:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$15:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v4, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$3:I

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$5:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$6:Z

    iget v8, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$7:I

    iget-object v9, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$8:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    iget-boolean v11, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$10:Z

    iget-boolean v12, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$11:Z

    iget-boolean v13, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$12:Z

    iget-boolean v14, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$13:Z

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$14:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda2;->f$15:Ljava/lang/Runnable;

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/ui/FilterCreateActivity;->$r8$lambda$SlUhTSDd1HG08Fd92gNVOkGw65I(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method
