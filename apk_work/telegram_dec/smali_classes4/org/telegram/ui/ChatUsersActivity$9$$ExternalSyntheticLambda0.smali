.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity$9;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity$9;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatUsersActivity$9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatUsersActivity$9;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity$9;->$r8$lambda$Oyjf6MjhSelHTvEtN7EJ9XlM2PI(Lorg/telegram/ui/ChatUsersActivity$9;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
