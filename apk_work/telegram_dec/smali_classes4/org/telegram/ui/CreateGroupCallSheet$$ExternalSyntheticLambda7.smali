.class public final synthetic Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CreateGroupCallSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/CreateGroupCallSheet;

    iput-object p2, p0, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/CreateGroupCallSheet;

    iget-object v1, p0, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {v0, v1}, Lorg/telegram/ui/CreateGroupCallSheet;->$r8$lambda$ClrFf4fbHsG5pRO2kruZO6g7i6o(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method
