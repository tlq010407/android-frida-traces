.class public final synthetic Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity$8;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/HashSet;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity$8;Lorg/telegram/tgnet/TLObject;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/CallLogActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-boolean p3, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$3:Ljava/util/HashSet;

    iput-object p5, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/CallLogActivity$8;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$3:Ljava/util/HashSet;

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity$8$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/CallLogActivity$8;->$r8$lambda$cn7KIyX9eOvydHACDWk7JoGbhuk(Lorg/telegram/ui/CallLogActivity$8;Lorg/telegram/tgnet/TLObject;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
