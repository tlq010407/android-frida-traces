.class public final synthetic Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_username;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_username;

    iput-boolean p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChangeUsernameActivity$3;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity$3;->$r8$lambda$2IXV-KzFN68pZYHJTbGWivSPG4Y(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
