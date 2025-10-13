.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ILjava/lang/CharSequence;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$4:Ljava/lang/CharSequence;

    iput p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$5:I

    iput-boolean p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$6:Z

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$2:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$3:I

    iget-object v5, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$4:Ljava/lang/CharSequence;

    iget v6, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$5:I

    iget-boolean v7, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda88;->f$6:Z

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v13, p6

    move-wide/from16 v14, p7

    invoke-static/range {v1 .. v15}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$LwWTYWcgcZ5d6JvMv0nKRqNSDHQ(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ILjava/lang/CharSequence;IZLorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    return-void
.end method

.method public synthetic didSelectContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate$-CC;->$default$didSelectContacts(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V

    return-void
.end method
