.class public final synthetic Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment$2;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsFragment$2;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsFragment$2;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/TopicsFragment$2;->$r8$lambda$GZ1AmcvX6GM3GWSuG8oFUyNlZH4(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method
