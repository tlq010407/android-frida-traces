.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->$r8$lambda$JFfdGijJqddktJIr7cn30PC0FJo(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
