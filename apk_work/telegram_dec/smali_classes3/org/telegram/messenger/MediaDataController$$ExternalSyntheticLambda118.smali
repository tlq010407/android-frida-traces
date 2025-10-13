.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$10:J

.field public final synthetic f$11:J

.field public final synthetic f$12:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_messages_search;ZLjava/lang/String;ZIZJJIJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$0:Lorg/telegram/messenger/MediaDataController;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    move v1, p3

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$2:Z

    move-object v1, p4

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$3:Ljava/lang/String;

    move v1, p5

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$4:Z

    move v1, p6

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$5:I

    move v1, p7

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$6:Z

    move-wide v1, p8

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$7:J

    move-wide v1, p10

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$8:J

    move v1, p12

    iput v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$9:I

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$10:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$11:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$12:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$13:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$2:Z

    iget-object v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$3:Ljava/lang/String;

    iget-boolean v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$4:Z

    iget v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$5:I

    iget-boolean v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$6:Z

    iget-wide v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$7:J

    iget-wide v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$8:J

    iget v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$9:I

    iget-wide v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$10:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$11:J

    move-wide v15, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$12:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda118;->f$13:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v20}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$5-xvaeLb9BpedZ_hoPk9GC9r6ag(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_messages_search;ZLjava/lang/String;ZIZJJIJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
