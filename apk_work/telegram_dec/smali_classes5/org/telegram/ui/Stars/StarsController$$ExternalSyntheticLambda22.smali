.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:J

.field public final synthetic f$10:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

.field public final synthetic f$11:I

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$2:[Z

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$4:Landroid/content/Context;

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p8, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$6:Z

    iput-object p9, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$7:Ljava/lang/String;

    iput-object p10, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iput-object p12, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$10:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    iput p13, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$11:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 14

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$2:[Z

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$4:Landroid/content/Context;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v7, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$6:Z

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$7:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v10, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$9:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v11, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$10:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    iget v12, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;->f$11:I

    move-object v13, p1

    check-cast v13, Lorg/telegram/messenger/Utilities$Callback;

    invoke-static/range {v0 .. v13}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$SqW43CU9X5rkmJ3zKigPy_81PWY(Lorg/telegram/ui/Stars/StarsController;J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
