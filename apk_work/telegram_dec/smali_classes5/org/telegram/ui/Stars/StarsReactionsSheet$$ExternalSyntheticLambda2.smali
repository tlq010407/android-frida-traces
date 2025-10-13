.class public final synthetic Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->$r8$lambda$-E-6RLksgp7v7zt85hGr0xpoYJY(Lorg/telegram/ui/Stars/StarsReactionsSheet;ILorg/telegram/ui/ChatActivity;Ljava/lang/Long;)V

    return-void
.end method
