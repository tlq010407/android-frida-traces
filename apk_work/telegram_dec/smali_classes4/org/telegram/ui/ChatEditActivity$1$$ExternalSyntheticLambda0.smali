.class public final synthetic Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity$1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatEditActivity$1;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatEditActivity$1;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChatEditActivity$1;->$r8$lambda$U95tD8JhVfI9ucZRtRRM4px55os(Lorg/telegram/ui/ChatEditActivity$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
