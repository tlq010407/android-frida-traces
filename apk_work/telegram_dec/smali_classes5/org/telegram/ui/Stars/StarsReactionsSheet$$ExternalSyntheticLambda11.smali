.class public final synthetic Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

.field public final synthetic f$1:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->$r8$lambda$iGuTsmZhVg60l-0nUnkPJkh8Wrg(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;)V

    return-void
.end method
