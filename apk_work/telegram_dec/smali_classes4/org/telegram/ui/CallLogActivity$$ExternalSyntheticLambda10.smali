.class public final synthetic Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/CallLogActivity;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/CallLogActivity;->$r8$lambda$Ti6q67SEb2xmyvCeGAY0Kek6knU(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
