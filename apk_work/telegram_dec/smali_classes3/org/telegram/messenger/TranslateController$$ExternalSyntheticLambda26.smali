.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/icu/text/Collator;


# direct methods
.method public synthetic constructor <init>(Landroid/icu/text/Collator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda26;->f$0:Landroid/icu/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda26;->f$0:Landroid/icu/text/Collator;

    check-cast p1, Lorg/telegram/messenger/TranslateController$Language;

    check-cast p2, Lorg/telegram/messenger/TranslateController$Language;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$35PEH62qLSc09oEau0v-ONskL6k(Landroid/icu/text/Collator;Lorg/telegram/messenger/TranslateController$Language;Lorg/telegram/messenger/TranslateController$Language;)I

    move-result p1

    return p1
.end method
