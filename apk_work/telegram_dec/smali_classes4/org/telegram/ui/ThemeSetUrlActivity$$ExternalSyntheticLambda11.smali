.class public final synthetic Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemeSetUrlActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$updateTheme;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemeSetUrlActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$updateTheme;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ThemeSetUrlActivity;

    iput-object p2, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/tl/TL_account$updateTheme;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ThemeSetUrlActivity;

    iget-object v1, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/ThemeSetUrlActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/tl/TL_account$updateTheme;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ThemeSetUrlActivity;->$r8$lambda$KojrL1evDWhXiPiyFXEbbd9L1wM(Lorg/telegram/ui/ThemeSetUrlActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$updateTheme;)V

    return-void
.end method
