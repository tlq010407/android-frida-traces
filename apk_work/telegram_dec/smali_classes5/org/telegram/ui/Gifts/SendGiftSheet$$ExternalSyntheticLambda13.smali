.class public final synthetic Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->$r8$lambda$2zBivikTFH0Tps-adzTJqUukiFY(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
