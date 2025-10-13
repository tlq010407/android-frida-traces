.class public abstract Lkotlin/enums/EnumEntriesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;
    .locals 2

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/enums/EnumEntriesList;

    new-instance v1, Lkotlin/enums/EnumEntriesKt$enumEntries$1;

    invoke-direct {v1, p0}, Lkotlin/enums/EnumEntriesKt$enumEntries$1;-><init>([Ljava/lang/Enum;)V

    invoke-direct {v0, v1}, Lkotlin/enums/EnumEntriesList;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lkotlin/collections/AbstractCollection;->size()I

    return-object v0
.end method
