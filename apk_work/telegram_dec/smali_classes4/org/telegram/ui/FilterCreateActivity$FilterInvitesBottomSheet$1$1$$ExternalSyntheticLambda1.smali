.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1$1;

    invoke-virtual {v0}, Lorg/telegram/ui/FilterCreateActivity$LinkCell;->qrcode()V

    return-void
.end method
