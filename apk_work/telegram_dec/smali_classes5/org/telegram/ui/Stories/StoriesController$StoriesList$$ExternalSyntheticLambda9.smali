.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    iput p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->$r8$lambda$gg3fS5s-oI23BB07hvagAM63VVA(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V

    return-void
.end method
