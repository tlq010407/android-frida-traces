.class public final synthetic Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/CallLogActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/CallLogActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/CallLogActivity;->$r8$lambda$SiZqmRgVlgxqL6mJDmZ3EMJJKQA(Lorg/telegram/ui/CallLogActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
