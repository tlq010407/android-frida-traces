.class public final synthetic Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->$r8$lambda$HPhb5555Pw3t2cLui7n7p1s9SmQ(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
