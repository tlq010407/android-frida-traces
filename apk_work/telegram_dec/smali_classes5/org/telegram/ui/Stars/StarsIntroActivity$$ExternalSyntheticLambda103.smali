.class public final synthetic Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->$r8$lambda$707VQncvlJFDhOIr6j36GAjMikU(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
