.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$2:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$3:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$2:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;->f$3:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$_jXv8QfjeYhu8FcZPIxHVlfRRh4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
