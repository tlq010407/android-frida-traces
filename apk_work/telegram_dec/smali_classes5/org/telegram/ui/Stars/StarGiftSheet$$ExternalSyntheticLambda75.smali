.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$3:Z

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$3:Z

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$L4ZN-FuSy7bb7DuDPyySadJKtn8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
