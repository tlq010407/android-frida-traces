.class public final synthetic Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;IJLorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 13

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, v0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v3, v0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$2:J

    iget-object v5, v0, Lorg/telegram/ui/bots/BotVerifySheet$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v12}, Lorg/telegram/ui/bots/BotVerifySheet;->$r8$lambda$NPPzBRagWUZtJoQJd7kYzB8VPS0(Lorg/telegram/ui/DialogsActivity;IJLorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method
