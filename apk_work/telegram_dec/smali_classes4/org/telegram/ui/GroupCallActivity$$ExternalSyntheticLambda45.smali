.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$3:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda45;->f$3:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$pdRl-BHwJmAU1StQJ8Y0UPZVYKY(Lorg/telegram/ui/GroupCallActivity;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Landroid/view/View;)V

    return-void
.end method
