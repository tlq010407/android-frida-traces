.class public final synthetic Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$74;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$74;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$74;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$74;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$1:Z

    iget v2, p0, Lorg/telegram/ui/ChatActivity$74$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$74;->$r8$lambda$Wa1JD9eLVV7VjDiwAjfXtcZTxDo(Lorg/telegram/ui/ChatActivity$74;ZI)V

    return-void
.end method
