.class public final synthetic Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->$r8$lambda$JNJvzFIeEZoZDRY5oBboHcFbvG0(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method
