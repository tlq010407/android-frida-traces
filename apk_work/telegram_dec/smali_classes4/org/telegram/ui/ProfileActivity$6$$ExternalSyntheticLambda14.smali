.class public final synthetic Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$6;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$6;JLorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/DialogsActivity;

    iput-object p5, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/ProfileActivity$6;

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$6$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ProfileActivity$6;->$r8$lambda$n7vkZZkAjmZG1mnEEEpmO8y_JRs(Lorg/telegram/ui/ProfileActivity$6;JLorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
