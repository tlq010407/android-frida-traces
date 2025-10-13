.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[I

.field public final synthetic f$10:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$11:J

.field public final synthetic f$12:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$13:[Landroid/util/SparseArray;

.field public final synthetic f$14:Lorg/telegram/messenger/MessageObject$GroupedMessages;

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:Ljava/lang/Runnable;

.field public final synthetic f$18:Ljava/lang/Runnable;

.field public final synthetic f$19:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public final synthetic f$4:I

.field public final synthetic f$5:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method public synthetic constructor <init>([I[II[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;IILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$0:[I

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$1:[I

    move v1, p3

    iput v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$2:I

    move-object v1, p4

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$3:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move v1, p5

    iput v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$4:I

    move-object v1, p6

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$5:[Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object v1, p7

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$7:Lorg/telegram/tgnet/TLRPC$User;

    move-object v1, p9

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$8:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$9:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object v1, p11

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$10:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-wide v1, p12

    iput-wide v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$11:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$12:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$13:[Landroid/util/SparseArray;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$14:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move/from16 v1, p17

    iput v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$15:I

    move/from16 v1, p18

    iput v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$16:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$17:Ljava/lang/Runnable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$18:Ljava/lang/Runnable;

    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$19:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$0:[I

    iget-object v2, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$1:[I

    iget v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$2:I

    iget-object v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$3:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$4:I

    iget-object v6, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$5:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$7:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$8:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$9:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$10:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$11:J

    iget-object v14, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$12:Lorg/telegram/messenger/MessageObject;

    iget-object v15, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$13:[Landroid/util/SparseArray;

    move-object/from16 p1, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$14:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-object/from16 v16, v1

    iget v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$15:I

    move/from16 v17, v1

    iget v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$16:I

    move/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$17:Ljava/lang/Runnable;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$18:Ljava/lang/Runnable;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda87;->f$19:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v23}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$PZ2cNBUSWVrvk2ZeMrDCjZIb_aI([I[II[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;IILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
