.class public final synthetic Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$PhoneView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/LoginActivity$PhoneView;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView;->$r8$lambda$JgZmIQfOTWRVMLcdkaU3gAQd4kw(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
