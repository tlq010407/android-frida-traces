.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$j5eNZO0mtZLijwv26RHamPJHtmI(Lorg/telegram/ui/Stars/StarGiftSheet;JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    return-void
.end method
