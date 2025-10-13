.class public final synthetic Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChangeBioActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_account$updateProfile;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChangeBioActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$updateProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChangeBioActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/tl/TL_account$updateProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChangeBioActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/ChangeBioActivity$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/tl/TL_account$updateProfile;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChangeBioActivity;->$r8$lambda$oxRWVXOYE8b06uztJMPCznBznxw(Lorg/telegram/ui/ChangeBioActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$updateProfile;)V

    return-void
.end method
