.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;->f$0:Ljava/text/Collator;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$7FRrR4a9X27JXVm5UFt68w07Xyw(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
