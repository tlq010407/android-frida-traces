.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$0bmoQrHCgPb1sopt2TC7WXuHkEA(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/tgnet/TLObject;)V

    return-void
.end method
