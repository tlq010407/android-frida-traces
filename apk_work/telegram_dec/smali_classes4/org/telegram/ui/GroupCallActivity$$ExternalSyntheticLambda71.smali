.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$3:Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

    iput-object p5, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$3:Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda71;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$quqIHdLqbUpt6Ncp8Ywgzvox3Ok(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
