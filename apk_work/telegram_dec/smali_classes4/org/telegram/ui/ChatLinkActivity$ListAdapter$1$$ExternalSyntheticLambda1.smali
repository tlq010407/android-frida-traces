.class public final synthetic Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->$r8$lambda$Ih4f3YWzGb_YJeF8UGjuUcRidW0(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V

    return-void
.end method
