.class public final synthetic Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->$r8$lambda$4Nt7Zy6Elg7WbJ6IxBLzGtKqjZs(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
