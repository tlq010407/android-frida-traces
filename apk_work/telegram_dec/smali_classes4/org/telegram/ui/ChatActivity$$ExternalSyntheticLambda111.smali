.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda111;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda111;->f$0:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda111;->f$0:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Lorg/telegram/messenger/MessageSuggestionParams;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$Uq-iLp_qRkM3HX2gjjHVF6rJSQo(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method
