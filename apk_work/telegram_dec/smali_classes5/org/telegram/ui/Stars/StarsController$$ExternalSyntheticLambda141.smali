.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$4:J

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$5:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-boolean p9, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$7:Z

    iput-boolean p10, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$8:Z

    iput-wide p11, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$9:J

    iput-object p13, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$2:Landroid/content/Context;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-wide v5, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$4:J

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$5:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$6:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v9, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$7:Z

    iget-boolean v10, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$8:Z

    iget-wide v11, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$9:J

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;->f$10:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$CNQ41l37SdswbgSGQ-7busCmyUU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
