.class public final synthetic Lorg/telegram/ui/web/AddressBarList$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/web/AddressBarList$QueryEntry;

    check-cast p2, Lorg/telegram/ui/web/AddressBarList$QueryEntry;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/AddressBarList;->$r8$lambda$A9HCdiFsN75Rds5ZIjcYL6l3kAw(Lorg/telegram/ui/web/AddressBarList$QueryEntry;Lorg/telegram/ui/web/AddressBarList$QueryEntry;)I

    move-result p1

    return p1
.end method
