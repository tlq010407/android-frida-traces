.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-wide p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$3:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$2:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;->f$3:J

    move-object v5, p1

    check-cast v5, Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$CKopFueGsqfMBozCuIW5B66oQow(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
