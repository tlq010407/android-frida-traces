.class public final synthetic Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;->$r8$lambda$fozp6dfENuEa9X8h2_UmPoV3BN4(Lorg/telegram/ui/MessageStatisticActivity$ListAdapter$1;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
