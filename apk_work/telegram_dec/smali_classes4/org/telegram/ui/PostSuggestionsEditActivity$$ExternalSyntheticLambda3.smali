.class public final synthetic Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->$r8$lambda$yNnf9LyA8hhkm4HUhHS_azjyEuY(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
