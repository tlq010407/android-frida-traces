.class public final synthetic Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StatisticActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/StatisticActivity;

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/StatisticActivity;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/StatisticActivity;->$r8$lambda$sEU1wGMTqjUKIjZUpqGMKDj89C8(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V

    return-void
.end method
