.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-boolean p8, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$7:Z

    iput-boolean p9, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$8:Z

    iput-wide p10, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$9:J

    iput-object p12, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$3:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$4:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$5:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v8, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$7:Z

    iget-boolean v9, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$8:Z

    iget-wide v10, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$9:J

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;->f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v1 .. v14}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$lpDexVxIhqG0MCvTdMrK8ad0mrY(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
