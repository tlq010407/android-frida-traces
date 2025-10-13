.class public final synthetic Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$6;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 11

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/ui/DialogsActivity;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/ProfileActivity$6;->$r8$lambda$U23zb4EDNHvaMUu-mRcojWSXzvg(Lorg/telegram/ui/ProfileActivity$6;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method
