.class public final synthetic Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;

    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;->$r8$lambda$f7E7vvIhUc37bPMgScBmF5N9WDg(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;[ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
