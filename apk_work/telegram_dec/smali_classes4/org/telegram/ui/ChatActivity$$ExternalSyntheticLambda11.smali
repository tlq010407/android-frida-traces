.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:[Lorg/telegram/ui/Cells/CheckBoxCell;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/Cells/CheckBoxCell;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$1:[Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    iput-boolean p6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$1:[Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    iget-boolean v5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda11;->f$5:Z

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$Iv-dtA6yO2wHKGFw-1Y1mReVwxs(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/Cells/CheckBoxCell;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
