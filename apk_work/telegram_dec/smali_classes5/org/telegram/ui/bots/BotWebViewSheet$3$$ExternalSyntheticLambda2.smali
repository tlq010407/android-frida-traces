.class public final synthetic Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/bots/BotWebViewSheet$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/bots/BotWebViewSheet$3;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 12

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/bots/BotWebViewSheet$3;

    iget-object v2, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/bots/BotWebViewSheet$3$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/telegram/ui/bots/BotWebViewSheet$3;->$r8$lambda$KLNbXzcgpPzITkuPFEi6fm0pBWE(Lorg/telegram/ui/bots/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method
