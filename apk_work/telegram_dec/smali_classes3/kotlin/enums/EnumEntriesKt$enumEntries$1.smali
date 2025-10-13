.class final Lkotlin/enums/EnumEntriesKt$enumEntries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entries:[Ljava/lang/Enum;


# direct methods
.method constructor <init>([Ljava/lang/Enum;)V
    .locals 0

    iput-object p1, p0, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->$entries:[Ljava/lang/Enum;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->invoke()[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Enum;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->$entries:[Ljava/lang/Enum;

    return-object v0
.end method
