.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegateInternal;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/RequestDelegate;

.field public final synthetic f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

.field public final synthetic f$6:Lorg/telegram/tgnet/QuickAckDelegate;

.field public final synthetic f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLObject;

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$2:I

    iput-wide p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$3:J

    iput-object p6, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p7, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iput-object p8, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$6:Lorg/telegram/tgnet/QuickAckDelegate;

    iput-object p9, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iput p10, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$8:I

    iput p11, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$9:I

    iput-boolean p12, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$10:Z

    iput p13, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$11:I

    return-void
.end method


# virtual methods
.method public final run(JILjava/lang/String;IJJI)V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    move/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-wide/from16 v19, p6

    move-wide/from16 v21, p8

    move/from16 v23, p10

    iget-object v1, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget-object v2, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLObject;

    iget v3, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$2:I

    iget-wide v4, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$3:J

    iget-object v6, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v7, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iget-object v8, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$6:Lorg/telegram/tgnet/QuickAckDelegate;

    iget-object v9, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iget v10, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$8:I

    iget v11, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$9:I

    iget-boolean v12, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$10:Z

    iget v13, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;->f$11:I

    invoke-static/range {v1 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$ZyOJSrOZGXtI2hAnseBF9FUkNz8(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZIJILjava/lang/String;IJJI)V

    return-void
.end method
