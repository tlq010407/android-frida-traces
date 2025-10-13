.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$11:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$5:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/lang/Runnable;

.field public final synthetic f$8:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

.field public final synthetic f$9:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$2:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$3:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$5:Lorg/telegram/messenger/Utilities$Callback;

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$6:Z

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$7:Ljava/lang/Runnable;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$8:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    iput-object p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$9:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$10:Lorg/telegram/tgnet/TLObject;

    iput-boolean p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$11:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$1:Z

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$2:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$3:J

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$5:Lorg/telegram/messenger/Utilities$Callback;

    iget-boolean v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$6:Z

    iget-object v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$7:Ljava/lang/Runnable;

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$8:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    iget-object v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$9:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$10:Lorg/telegram/tgnet/TLObject;

    iget-boolean v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$11:Z

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$o_-qGmLHmu3F2Dc1rShJKgTn2PI(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
