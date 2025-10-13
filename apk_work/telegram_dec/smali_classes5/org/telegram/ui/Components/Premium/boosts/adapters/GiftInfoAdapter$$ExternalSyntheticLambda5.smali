.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 10

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->$r8$lambda$iiFH9_hQaTIBxDLbcR_xCeDzS2U(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method
