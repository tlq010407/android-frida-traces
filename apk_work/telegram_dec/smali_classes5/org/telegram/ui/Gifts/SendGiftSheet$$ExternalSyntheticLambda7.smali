.class public final synthetic Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Gifts/SendGiftSheet;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->$r8$lambda$bwaLn5NB9435HSFoVExd8Rxe3_A(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
