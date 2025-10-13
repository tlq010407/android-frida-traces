.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$M6_mLfFCWVXOn1xGYLFvT2meKsY(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V

    return-void
.end method
