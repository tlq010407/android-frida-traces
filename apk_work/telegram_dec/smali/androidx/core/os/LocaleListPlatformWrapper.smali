.class final Landroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# instance fields
.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    check-cast p1, Landroidx/core/os/LocaleListInterface;

    invoke-interface {p1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api24Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/LocaleList;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/LocaleList;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api24Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
