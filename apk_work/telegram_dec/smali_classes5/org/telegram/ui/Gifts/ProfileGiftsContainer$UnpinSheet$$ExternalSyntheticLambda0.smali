.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

.field public final synthetic f$1:Lorg/telegram/ui/Stars/StarsController$GiftsList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->$r8$lambda$H2kIg_bpVwz0vNtLLQ9jICs4F9g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method
