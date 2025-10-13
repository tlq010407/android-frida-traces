.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$5SDwetQD417jiu52rTzne180Y9o(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
