.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ManageLinksActivity$LinkCell;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->$r8$lambda$R4X27reW1-AOcOIEOketL-mw8Lc(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
