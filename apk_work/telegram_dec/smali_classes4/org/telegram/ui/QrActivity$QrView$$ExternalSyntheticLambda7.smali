.class public final synthetic Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/QrActivity$QrView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/QrActivity$QrView;

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/QrActivity$QrView;

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$QrView$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;

    invoke-static {v0, v1}, Lorg/telegram/ui/QrActivity$QrView;->$r8$lambda$w616M4O5q-8HGxSJmK_NDTkv7nw(Lorg/telegram/ui/QrActivity$QrView;Lorg/telegram/tgnet/TLRPC$TL_exportedContactToken;)V

    return-void
.end method
