.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$10:J

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$12:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:J

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/ui/Stars/StarsController;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$1:Lorg/telegram/tgnet/TLObject;

    move-object v1, p3

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    move-object v1, p4

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$3:Lorg/telegram/messenger/MessageObject;

    move-object v1, p5

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$4:Landroid/content/Context;

    move-wide v1, p6

    iput-wide v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$5:J

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$6:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$7:I

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$8:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    move-wide v1, p12

    iput-wide v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$10:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$12:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$13:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$3:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$4:Landroid/content/Context;

    iget-wide v6, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$5:J

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$6:Ljava/lang/String;

    iget v9, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$7:I

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$8:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-wide v12, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$10:J

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$11:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v15, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$12:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;->f$13:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$N82GEYp3BvEwTa0iV0yywKpdhxo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V

    return-void
.end method
