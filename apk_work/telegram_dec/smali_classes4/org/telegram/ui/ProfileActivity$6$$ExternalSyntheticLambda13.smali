.class public final synthetic Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$6;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$6;JLorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method


# virtual methods
.method public final run(ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda13;->f$2:Lorg/telegram/ui/DialogsActivity;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$6;->$r8$lambda$rvaPexoU8Bk2DqBB5cxMIHKWDzg(Lorg/telegram/ui/ProfileActivity$6;JLorg/telegram/ui/DialogsActivity;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V

    return-void
.end method
